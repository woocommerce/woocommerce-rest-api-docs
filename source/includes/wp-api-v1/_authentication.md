# Authentication #

WooCommerce includes by default two ways to authenticate with the WP REST API, depending on whether the site supports SSL. It's still possible to use any [WP REST API authetication](http://v2.wp-api.org/guide/authentication/) plugin or method too.

### Over HTTPS ###

You may use [HTTP Basic Auth](http://en.wikipedia.org/wiki/Basic_access_authentication) by providing the REST API Consumer Key as the username and the REST API Consumer Secret as the password.

> HTTP Basic Auth example

```shell
curl https://www.example.com/wc-api/v3/orders \
    -u consumer_key:consumer_secret
```

Occasionally some servers may not parse the Authorization header correctly (if you see a "Consumer key is missing" error when authenticating over SSL, you have a server issue). In this case, you may provide the consumer key/secret as query string parameters.

> Example for servers that not properly parse the Authorization header:

```shell
curl https://www.example.com/wc-api/v3/orders?consumer_key=123&consumer_secret=abc
```

### Over HTTP ###

You must use [OAuth 1.0a "one-legged" authentication](http://tools.ietf.org/html/rfc5849) to ensure REST API credentials cannot be intercepted. Typically you will use any standard OAuth 1.0a library in the language of choice to handle the authentication, or generate the necessary parameters by following the following instructions.

#### Generating an OAuth signature ####

1) Set the HTTP method for the request:

`GET`

2) Set your base request URI -- this is the full request URI without query string parameters -- and URL encode according to RFC 3986:

`http://www.example.com/wp-json/wc/v1/orders`

when encoded:

`http%3A%2F%2Fwww.example.com%2Fwp-json%2Fwc%2Fv1%2Forders`

3) Collect and normalize your query string parameters. This includes all `oauth_*` parameters except for the signature. Parameters should be normalized by URL encoding according to RFC 3986 (`rawurlencode` in PHP) and percent(`%`) characters should be double-encoded (e.g. `%` becomes `%25`.

4) Sort the parameters in byte-order (`uksort( $params, 'strcmp' )` in PHP)

5) Join each parameter with an encoded equals sign (`%3D`):

`oauth_signature_method%3DHMAC-SHA1`

6) Join each parameter key/value with an encoded ampersand (`%26`):

`oauth_consumer_key%3Dabc123%26oauth_signature_method%3DHMAC-SHA1`

7) Form the string to sign by joining the HTTP method, encoded base request URI, and encoded parameter string with an unencoded ampersand symbol (&):

`GET&http%3A%2F%2Fwww.example.com%2Fwp-json%2Fwc%2Fv1%2Forders&oauth_consumer_key%3Dabc123%26oauth_signature_method%3DHMAC-SHA1`

8) Generate the signature using the string to key and your consumer secret key

If you are having trouble generating a correct signature, you'll want to review the string you are signing for encoding errors. The [authentication source](https://github.com/woothemes/woocommerce/blob/master/includes/api/class-wc-rest-authentication.php#L141) can also be helpful in understanding how to properly generate the signature.

#### OAuth Tips ####

* The OAuth parameters must be added as query string parameters and *not* included in the Authorization header. This is because there is no reliable cross-platform way to get the raw request headers in WordPress.
* The require parameters are: `oauth_consumer_key`, `oauth_timestamp`, `oauth_nonce`, `oauth_signature`, and `oauth_signature_method`. `oauth_version` is not required and should be omitted.
* HMAC-SHA1 or HMAC-SHA256 are the only accepted hash algorithms.
* The OAuth nonce can be any randomly generated 32 character (recommended) string that is unique to the consumer key. Read more suggestions on [generating nonces on the Twitter REST API forums](https://dev.twitter.com/discussions/12445).
* The OAuth timestamp should be the unix timestamp at the time of the request. The REST API will deny any requests that include a timestamp outside of a 15 minute window to prevent replay attacks.
* You must use the store URL provided by the index when forming the base string used for the signature, as this is what the server will use. (e.g. if the store URL includes a `www` sub-domain, you should use it for requests)
* You may test your generated signature using LinkedIn's [OAuth test console](http://developer.linkedinlabs.com/oauth-test/) -- leave the member token/secret blank.
* Twitter has great instructions on [generating signatures](https://dev.twitter.com/docs/auth/creating-signature) with OAuth 1.0a, but remember tokens are not used with this implementation.
* Note that the request body is *not* signed as per the OAuth spec, see [Google's OAuth 1.0 extension](https://oauth.googlecode.com/svn/spec/ext/body_hash/1.0/oauth-bodyhash.html) for details on why.
* If including filter fields in your request, it saves a lot of trouble if you can order your filter fields alphabetically before submitting. Many Oauth libraries won't order subquery fields properly, resulting in invalid signatures.
