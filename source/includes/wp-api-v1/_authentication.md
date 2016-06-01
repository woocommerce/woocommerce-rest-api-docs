# Authentication #

WooCommerce includes two ways to authenticate with the WP REST API. In addition, it is possible to use any [WP REST API authentication](http://v2.wp-api.org/guide/authentication/) plugin or method too.

## Authentication over HTTPS ##

You may use [HTTP Basic Auth](http://en.wikipedia.org/wiki/Basic_access_authentication) by providing the REST API Consumer Key as the username and the REST API Consumer Secret as the password. 

> HTTP Basic Auth example

```shell
curl https://www.example.com/wc-api/v3/orders \
    -u consumer_key:consumer_secret
```

Occasionally some servers may not parse the Authorization header correctly (if you see a "Consumer key is missing" error when authenticating over SSL, you have a server issue). In this case, you may provide the consumer key/secret as query string parameters instead.

> Example for servers that not properly parse the Authorization header:

```shell
curl https://www.example.com/wc-api/v3/orders?consumer_key=123&consumer_secret=abc
```

## Authentication over HTTP ##

You must use [OAuth 1.0a "one-legged" authentication](http://tools.ietf.org/html/rfc5849) to ensure REST API credentials cannot be intercepted by an attacker. Typically you will use any standard OAuth 1.0a library in the language of your choice to handle the authentication, or generate the necessary parameters by following the following instructions.

### Creating a signature ###

#### Collect the request method and URL ####

First you need to determine the HTTP method you will be using for the request, and the URL of the request.

The **HTTP method** will be `GET` in our case.

The **Request URL** will be the endpoint you are posting to, e.g. `http://www.example.com/wp-json/wc/v1/orders`.

#### Collect parameters ####

Collect and normalize your query string parameters. This includes all oauth_* parameters except for the oauth_signature itself.

These values need to be encoded into a single string which will be used later on. The process to build the string is very specific:

1. [Percent encode](https://dev.twitter.com/oauth/overview/percent-encoding-parameters) every key and value that will be signed.
2. Sort the list of parameters alphabetically by encoded key.
3. For each key/value pair:
	- Append the encoded key to the output string.	- Append the `=` character to the output string.
	- Append the encoded value to the output string.
	- If there are more key/value pairs remaining, append a `&` character to the output string.

When percent encoding in PHP for example, you would use `rawurlencode()`.

When sorting parameters in PHP for example, you would use `uksort( $params, 'strcmp' )`.

> Parameters example:

```
oauth_consumer_key=abc123&oauth_signature_method=HMAC-SHA1
```

#### Create the signature base string ####

The above values collected so far must be joined to make a single string, from which the signature will be generated. This is called the signature base string in the OAuth specification.

To encode the HTTP method, request URL, and parameter string into a single string:

1. Set the output string equal to the uppercase **HTTP Method**.
2. Append the `&` character to the output string.
3. [Percent encode](https://dev.twitter.com/oauth/overview/percent-encoding-parameters) the URL and append it to the output string.
4. Append the `&` character to the output string.
5. [Percent encode](https://dev.twitter.com/oauth/overview/percent-encoding-parameters) the parameter string and append it to the output string.

> Example signature base string:

```
GET&http%3A%2F%2Fwww.example.com%2Fwp-json%2Fwc%2Fv1%2Forders&oauth_consumer_key%3Dabc123%26oauth_signature_method%3DHMAC-SHA1
```

#### Generate the signature ####

Generate the signature using the *signature base string* and your consumer secret key with the HMAC-SHA1 hashing algorithm.

In PHP you can use the [hash_hmac](http://php.net/manual/en/function.hash-hmac.php) function.

HMAC-SHA1 or HMAC-SHA256 are the only accepted hash algorithms.

If you are having trouble generating a correct signature, you'll want to review the string you are signing for encoding errors. The [authentication source](https://github.com/woothemes/woocommerce/blob/master/includes/api/class-wc-rest-authentication.php#L141) can also be helpful in understanding how to properly generate the signature.

### OAuth tips ###

* The OAuth parameters must be added as query string parameters and *not* included in the Authorization header. This is because there is no reliable cross-platform way to get the raw request headers in WordPress.
* The required parameters are: `oauth_consumer_key`, `oauth_timestamp`, `oauth_nonce`, `oauth_signature`, and `oauth_signature_method`. `oauth_version` is not required and should be omitted.
* The OAuth nonce can be any randomly generated 32 character (recommended) string that is unique to the consumer key. Read more suggestions on [generating nonces on the Twitter REST API forums](https://dev.twitter.com/discussions/12445).
* The OAuth timestamp should be the unix timestamp at the time of the request. The REST API will deny any requests that include a timestamp outside of a 15 minute window to prevent replay attacks.
* You must use the store URL provided by the index when forming the base string used for the signature, as this is what the server will use. (e.g. if the store URL includes a `www` sub-domain, you should use it for requests)
* You may test your generated signature using LinkedIn's [OAuth test console](http://developer.linkedinlabs.com/oauth-test/) -- leave the member token/secret blank.
* Twitter has great instructions on [generating signatures](https://dev.twitter.com/docs/auth/creating-signature) with OAuth 1.0a, but remember tokens are not used with this implementation.
* Note that the request body is *not* signed as per the OAuth spec, see [Google's OAuth 1.0 extension](https://oauth.googlecode.com/svn/spec/ext/body_hash/1.0/oauth-bodyhash.html) for details on why.
* If including parameters in your request, it saves a lot of trouble if you can order your query string items alphabetically.
