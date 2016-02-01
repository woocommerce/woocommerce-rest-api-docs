# Introduction #

Introduced in WooCommerce 2.1, the REST API allows store data to be created, read, updated, and deleted using the JSON format.

## Requirements ##

You must be using WooCommerce 2.1 or newer and the REST API must be enabled under `WooCommerce > Settings`. You must enable pretty permalinks, as default permalinks will not work.

<aside class="notice">
Many endpoints were improving with new versions of WooCommerce, so we always recommend keeping your WooCommerce updated to work properly with this documentation.
</aside>

## Version ##

The current API version is `v3` which takes a first-order position in endpoints.

Check the API versions present in every version of WooCommerce:

| API Version |          WooCommerce          |
| ----------- | ----------------------------- |
| `v1`        | 2.1.x, 2.2.x, 2.3.x and 2.4.x |
| `v2`        | 2.2.x, 2.3.x and 2.4.x        |
| `v3`        | 2.4.x                         |

The `v1` and `v2` will be removed in future versions.

### Differences between v1 and v2 versions ###

* v1 supports XML response format, v2 only supports JSON.
* v1 does not support creating or updating (with the exception of order status) any resources, v2 supports full create/read/update/delete for all endpoints.
* v1 does not include order item meta, v2 includes full order item meta (with an optional `filter` parameter to include protected order item meta)
* v1 does not include any endpoints for listing a customer's available downloads, v2 includes the `GET /customer/{id}/downloads` endpoint.
* v1 includes an endpoint for listing notes for an order, v2 includes full create/read/update/delete endpoints.
* v1 does not include any endpoints for listing product categories, v2 includes two endpoints for product categories (`GET /products/categories` and `GET /products/categories/{id}`).
* v1 does not include any endpoints for getting valid order statuses, v2 includes an endpoint for listing valid order statuses (`GET /orders/statuses`).
* v2 supports the core features added in WooCommerce 2.2, primarily order refunds (via the `/orders/refunds` endpoint) and Webhooks (via the `/webhooks`).

### Differences between v3 and old versions ###

* v3 implement full basic authentication ([conforms to the Basic auth spec)](http://tools.ietf.org/html/rfc2617)).
* v3 fixes the OAuth implementation to be compliant with the [Oauth 1.0a specs](http://tools.ietf.org/html/rfc5849).
* v3 include a new endpoint to get all product orders.
* v3 have new endpoints to allow bulk actions as edition and creation of products, orders, customers and coupons.
* v3 introduce new product attribute endpoints (`GET`, `POST`, `PUT` and `DELETE`).
* v3 deprecated the product/sku/&lt;id&gt; endpoint (because a SKU can be generated with any character, besides that there is a filter callend `filter[sku]`).
* v3 include category thumbnails on the requests for `product/categories`.
* v3 uses our option to auto generate passwords for new customers.

### API Docs for each version ###

* [WooCommerce REST API v1 docs](v1.html)
* [WooCommerce REST API v2 docs](v2.html)
* [WooCommerce REST API v3 docs](index.html)

## Schema ##

The API is accessible via this endpoint:

`https://www.your-store.com/wc-api/v2`

You may access the API over either HTTP or HTTPS. HTTPS is recommended where possible, as authentication is simpler. The API index will declare if the site supports SSL or not.

## Requests/Responses ##

The default response format is JSON. Requests with a message-body use plain JSON to set or update resource attributes. Successful requests will return a `200 OK` HTTP status.

Some general information about responses:

* Dates are returned in [RFC3339](http://www.ietf.org/rfc/rfc3339.txt) format in UTC timezone: `YYYY-MM-DDTHH:MM:SSZ`

* Resource IDs are returned as integers.

* Any decimal monetary amount, such as prices or totals, are returned as strings with two decimal places. The decimal separator (typically either `.` or `,`) is controlled by the site and is included in the API index. This is by design, in order to make localization of API data easier for the client. You may need to account for this in your implemetation if you will be doing calculations with the returned data (e.g. convert string amounts with commas as the decimal place before performing any calculations)

* Other amounts, such as item counts, are returned as integers.

* Blank fields are generally included as `null` instead of being blank strings or omitted.

## Authentication ##

There are two aways to authenticate with the API, depending on whether the site supports SSL or not.  Remember that the Index endpoint will indicate if the site supports SSL or not.

### Over HTTPS ###

You may use [HTTP Basic Auth](http://en.wikipedia.org/wiki/Basic_access_authentication) by providing the API Consumer Key as the username and the API Consumer Secret as the password.

> HTTP Basic Auth example

```shell
curl https://www.example.com/wc-api/v2/orders \
    -u consumer_key:consumer_secret
```

Occasionally some servers may not properly parse the Authorization header (if you see a "Consumer key is missing" error when authenticating over SSL, you have a server issue). In this case, you may provide the consumer key/secret as query string parameters.

> Example for servers that not properly parse the Authorization header:

```shell
curl https://www.example.com/wc-api/v2/orders?consumer_key=123&consumer_secret=abc
```

### Over HTTP ###

You must use [OAuth 1.0a "one-legged" authentication](http://tools.ietf.org/html/rfc5849) to ensure API credentials cannot be intercepted. Typically you may use any standard OAuth 1.0a library in your language of choice to handle the authentication, or generate the necessary parameters by following these instructions.

#### Generating an OAuth signature ####

1) Set the HTTP method for the request:

`GET`

2) Set your base request URI -- this is the full request URI without query string parameters -- and URL encode according to RFC 3986:

`http://www.example.com/wc-api/v1/orders`

when encoded:

`http%3A%2F%2Fwww.example.com%2Fwc-api%2Fv1%2Forders`

3) Collect and normalize your query string parameters. This includes all `oauth_*` parameters except for the signature. Parameters should be normalized by URL encoding according to RFC 3986 (`rawurlencode` in PHP) and percent(`%`) characters should be double-encoded (e.g. `%` becomes `%25`.

4) Sort the parameters in byte-order (`uksort( $params, 'strcmp' )` in PHP)

5) Join each parameter with an encoded equals sign (`%3D`):

`oauth_signature_method%3DHMAC-SHA1`

6) Join each parameter key/value with an encoded ampersand (`%26`):

`oauth_consumer_key%3Dabc123%26oauth_signature_method%3DHMAC-SHA1`

7) Form the string to sign by joining the HTTP method, encoded base request URI, and encoded parameter string with an unencoded ampersand symbol (&):

`GET&http%3A%2F%2Fwww.example.com%2Fwc-api%2Fv1%2Forders&oauth_consumer_key%3Dabc123%26oauth_signature_method%3DHMAC-SHA1`

8) Generate the signature using the string to key and your consumer secret key

If you are having trouble generating a correct signature, you'll want to review your string to sign for errors with encoding. The [authentication source](https://github.com/woothemes/woocommerce/blob/master/includes/api/class-wc-api-authentication.php#L177) can also be helpful in understanding how to properly generate the signature.

#### OAuth Tips ####

* The OAuth parameters must be added as query string parameters and *not* included in the Authorization header. This is because there is no reliable cross-platform way to get the raw request headers in WordPress.
* The require parameters are: `oauth_consumer_key`, `oauth_timestamp`, `oauth_nonce`, `oauth_signature`, and `oauth_signature_method`. `oauth_version` is not required and must be omitted.
* HMAC-SHA1 or HMAC-SHA256 are the only accepted hash algorithms.
* The OAuth nonce can be any randomly generated 32 character (recommended) string that is unique to the consumer key. Read more suggestions on [generating a nonce](https://dev.twitter.com/discussions/12445) on the Twitter API forums.
* The OAuth timestamp should be the unix timestamp at the time of the request. The API will deny any requests that include a timestamp that is outside of a 15 minute window to prevent replay attacks.
* You must use the store URL provided by the index when forming the base string used for the signature, as this is what the server will use. (e.g. if the store URL includes a `www` sub-domain, you should use it for requests)
* Some OAuth libraries add an ampersand to the provided secret key before generating the signature. WooCommerce does *not* adhere to the OAuth spec in this regard and the ampersand should be removed prior to generating the signature. An ampersand at the end of the string will result in an invalid signature.
* You may test your generated signature using LinkedIn's [OAuth test console](http://developer.linkedinlabs.com/oauth-test/) -- leave the member token/secret blank.
* Twitter has great instructions on [generating a signature](https://dev.twitter.com/docs/auth/creating-signature) with OAuth 1.0a, but remember tokens are not used with this implementation.
* Note that the request body is *not* signed as per the OAuth spec, see [Google's OAuth 1.0 extension](https://oauth.googlecode.com/svn/spec/ext/body_hash/1.0/oauth-bodyhash.html) for details on why.
* If including filter fields in your request, it saves a lot of trouble if you can order your filter fields alphabetically before submitting. Many Oauth libraries won't order subquery fields properly, resulting in invalid signatures.

## Parameters ##

All endpoints accept optional parameters which can be passed as an HTTP query string parameter, e.g. `GET /orders?status=completed`. There are common parameters and endpoint-specific parameters which are documented along with that endpoint.

### Filter Parameter ###

All endpoints accept a `filter` parameter that scopes individual filters using brackets, like date filtering:

`GET /orders?filter[created_at_min]=2013-11-01`

Multiple `filter` parameters can be included and intermixed with other parameters:

`GET /orders?status=completed&filter[created_at_min]=2013-11-01&filter[created_at_max]=2013-11-30`

Note that the following filters are supported for all endpoints except the `reports` endpoint, which has it's own set of filters that are documented along with that endpoint.

#### Available Filters ####

|       Filter       |                                                                                                                                         Description                                                                                                                                          |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `created_at_min`   | given a date, only resources *created after the provided date* will be returned                                                                                                                                                                                                              |
| `created_at_max`   | given a date, only resources *created before the provided date* will be returned                                                                                                                                                                                                             |
| `updated_at_min`   | given a date, only resources *updated after the provided date* will be returned                                                                                                                                                                                                              |
| `updated_at_max`   | given a date, only resources *updated before the provided date* will be returned                                                                                                                                                                                                             |
| `q`                | performs a keyword search and returns resources that match, e.g. `GET /products?filter[q]=search-keyword`. Note that search terms should be URL-encoded as they will be decoded internally with [`urldecode`](http://us3.php.net/manual/en/function.urldecode.php)                           |
| `order`            | controls the ordering of the resources returned, accepted values are `ASC` (default) or `DESC`                                                                                                                                                                                               |
| `orderby`          | controls the field that is used for ordering the resources returned. Accepts the same arguments as [`WP_Query`](http://codex.wordpress.org/Class_Reference/WP_Query#Order_.26_Orderby_Parameters). Defaults to `date`. You can order by `meta_value` but you must provide `orderby_meta_key` |
| `orderby_meta_key` | the meta key to order returned resources by when using `orderby=meta_value`. For example, you could order products by price using `GET /products?filter[orderby]=meta_value_num&filter[orderby_meta_key]=_price`                                                                             |
| `post_status`      | limits resources to only those with the specified post status. Most useful for returning unpublished products, e.g. `GET /products?filter[post_status]=draft`                                                                                                                                |
| `meta`             | resource meta is excluded by default, but it can be included by setting `meta=true`, e.g. `GET /orders?filter[meta]=true`. Protected meta (meta whose key is prefixed with an underscore) is not included in the response                                                                    |
| `pagination`       | explained below                                                                                                                                                                                                                                                                              |

Note that Dates should be provided in [RFC3339](http://www.ietf.org/rfc/rfc3339.txt) format in UTC timezone: `YYYY-MM-DDTHH:MM:SSZ`. You may omit the time and timezone if desired.

### Fields Parameter ###

You may limit the fields returned in the response using the `fields` parameter:

`GET /orders?fields=id`

To include multiple fields, separate them with commas:

`GET /orders?fields=id,status`

You can specify sub-fields using dot-notation:

`GET /orders?fields=id,status,payment_details.method_title`

Sub-fields can't be limited for resources that have multiple structs, like an order's line items. For example, this will return just the line items, but each line item will have the full set of information, not just the product ID:

`GET /orders?fields=line_items.product_id`

## Pagination ##

Requests that return multiple items will be paginated to 10 items by default. This default can be changed by the site administrator by changing the `posts_per_page` option. Alternatively the items per page can be specifed with the `?filter[limit]` parameter:

`GET /orders?filter[limit]=15`

You can specify further pages with the `?page` parameter:

`GET /orders?page=2`

You may also specify the offset from the first resource using the `?filter[offset]` parameter:

`GET /orders?filter[offset]=5`

Page number is 1-based and ommiting the `?page` parameter will return the first page.

The total number of resources and pages are always included in the `X-WC-Total` and `X-WC-TotalPages` HTTP headers.

## Link Header ##

Pagination info is included in the [Link Header](http://tools.ietf.org/html/rfc5988). It's recommended that you follow these values instead of building your own URLs where possible.

```
Link: <https://www.example.com/wc-api/v1/products?page=2>; rel="next",
<https://www.example.com/wc-api/v1/products?page=3>; rel="last"`
```

*Linebreak included for readability*

The possible `rel` values are:

|  Value  |                       Description                       |
|---------|---------------------------------------------------------|
| `next`  | Shows the URL of the immediate next page of results     |
| `last`  | Shows the URL of the last page of results               |
| `first` | Shows the URL of the first page of results              |
| `prev`  | Shows the URL of the immediate previous page of results |

## Errors ##

Occasionally you might encounter errors when accessing the API. There are four possible types:

* Invalid requests, such as using an unsupported HTTP method will result in `400 Bad Request`.
* Authentication or permission errors, such as incorrect API keys will result in `401 Unauthorized`.
* Requests to resources that don't exist or are missing required parameters will result in `404 Not Found`.
* Requests that cannot be processed due to a server error will result in `500 Internal Server Error`.

> `400 Bad Request` example:

```json
{
  "errors" : [
    {
      "code" : "woocommerce_api_unsupported_method",
      "message" : "Unsupported request method"
    }
  ]
}
```

> `401 Unauthorized` example:

```json
{
  "errors" : [
    {
      "code" : "woocommerce_api_authentication_error",
      "message" : "Consumer Key is invalid"
    }
  ]
}
```

> `404 Not Found` example:

```json
{
  "errors" : [
    {
      "code" : "woocommerce_api_invalid_order",
      "message" : "Invalid order"
    }
  ]
}
```

> `500 Internal Server Error` example:

```json
{
  "errors" : [
    {
      "code" : "woocommerce_api_invalid_handler",
      "message" : "The handler for the route is invalid"
    }
  ]
}
```

Errors return both an appropriate HTTP status code and response object which contains a `code` and `message` attribute. If an endpoint has any custom errors, they are documented with that endpoint.

## HTTP Verbs ##

The API uses the appropriate HTTP verb for each action:

|  Verbe   |                               Description                               |
|----------|-------------------------------------------------------------------------|
| `HEAD`   | Can be used for any endpoint to return just the HTTP header information |
| `GET`    | Used for retrieving resources                                           |
| `PUT`    | Used for updating resources                                             |
| `POST`   | Used for creating resources                                             |
| `DELETE` | Used for deleting resources                                             |

## JSONP Support ##

The API supports JSONP by default. JSONP responses uses the `application/javascript` content-type. You can specify the callback using the `?_jsonp` parameter for `GET` requests to have the response wrapped in a JSON function:

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/orders/count?_jsonp=ordersCount</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/orders/count?_jsonp=ordersCount \
	-u consumer_key:consumer_secret
```

> Response:

```
\**\ordersCount({"count":8})
```

> If the site administrator has chosen to disable it, you will receive a `400 Bad Request` error:

```json
{
  "errors": [
    {
      "code": "woocommerce_api_jsonp_disabled",
      "message": "JSONP support is disabled on this site"
    }
  ]
}
```

> If your callback contains invalid characters, you will receive a `400 Bad Request` error:


```json
{
  "errors": [
    {
      "code": "woocommerce_api_jsonp_callback_invalid",
      "message": "The JSONP callback function is invalid"
    }
  ]
}
```

## Webhooks ##

Webhooks are an experimental feature in the v2 REST API. They must be managed using the REST API endpoints as a UI is not yet available. The `WC_Webhook` class manages all data storage/retrieval from the custom post type, as well as enqueuing a webhook's actions and processing/delivering/logging the webhook. On `woocommerce_init`, active webhooks are loaded and their associated hooks are added.

Each webhook has:

* status: active (delivers payload), paused (delivery paused by admin), disabled (delivery paused by failure)
* topic: determines which resource events the webhook is triggered for
* delivery URL: URL where the payload is delivered, must be HTTP or HTTPS
* secret: an optional secret key that is used to generate a HMAC-SHA256 hash of the request body so the receiver can verify authenticity of the webhook
* hooks: an array of hook names that are added and bound to the webhook for processing

### Topics ###

The topic is a combination resource (e.g. order) and event (e.g. created) and maps to one or more hook names (e.g. `woocommerce_checkout_order_processed`). Webhooks can be created using the topic name and the appropriate hooks are automatically added.

Core topics are:

* `coupon.created, coupon.updated, coupon.deleted`
* `customer.created, customer.updated, customer.deleted`
* `order.created, order.updated, order.deleted`
* `product.created, product.updated, product.deleted`

Custom topics can also be used which map to a single hook name, so for example you could add a webhook with topic `action.woocommerce_add_to_cart` that is triggered on that event. Custom topics pass the first hook argument to the payload, so in this example the `cart_item_key` would be included in the payload.

### Delivery/Payload ###

Delivery is done using `wp_remote_post()` (HTTP POST) and processed in the background by default using wp-cron. A few custom headers are added to the request to help the receiver process the webhook:

* `X-WC-Webhook-Topic` - e.g. `order.updated`
* `X-WC-Webhook-Resource` - e.g. `order`
* `X-WC-Webhook-Event` - e.g. `updated`
* `X-WC-Webhook-Signature` - a base64 encoded HMAC-SHA256 hash of the payload
* `X-WC-Webhook-ID` - webhook's post ID
* `X-WC-Delivery-ID` - delivery log ID (a comment)

The payload is JSON encoded and for API resources (coupons,customers,orders,products), the response is exactly the same as if requested via the REST API.

### Logging ###

Requests/responses are logged as comments on the webhook custom post type. Each delivery log includes:

* Request duration
* Request URL, method, headers, and body
* Response Code, message, headers, and body

Only the 25 most recent delivery logs are kept in order to reduce comment table bloat.

After 5 consecutive failed deliveries (as defined by a non HTTP 2xx response code), the webhook is disabled and must be edited via the REST API to re-enable.

Delivery logs can be fetched through the REST API endpoint or in code using `WC_Webhook::get_delivery_logs()`

### Endpoints ###

See the webhook resource section.

## Troubleshooting ##

* Nginx - Older configurations of Nginx can cause issues with the API, see [this issue](https://github.com/woothemes/woocommerce/issues/5616#issuecomment-47338737) for details

## Official Libraries ##

- [Node.js](https://www.npmjs.com/package/woocommerce-api)
- [Python](https://pypi.python.org/pypi/WooCommerce)
- [PHP](https://packagist.org/packages/woothemes/woocommerce-api)
- [Ruby](https://rubygems.org/gems/woocommerce_api)

```javascript
// Install:
// npm install --save woocommerce-api

// Setup:
var WooCommerceAPI = require('woocommerce-api');

var WooCommerce = new WooCommerceAPI({
  url: 'http://example.com', // Your store URL
  consumerKey: 'consumer_key', // Your consumer key
  consumerSecret: 'consumer_secret', // Your consumer secret
  version: 'v2' // WooCommerce API version
});
```

```python
# Install:
# pip install woocommerce

# Setup:
from woocommerce import API

wcapi = API(
    url="http://example.com",
    consumer_key="consumer_key",
    consumer_secret="consumer_secret",
    version="v2"
)
```

```php
<?php
// Install:
// composer require "woothemes/woocommerce-api:2.*"

// Setup:
include_once('vendor/autoload.php');

$woocommerce = new WC_API_Client(
    'http://example.com/',
    'consumer_key',
    'consumer_secret'
);
?>
```

```ruby
# Install:
# gem install woocommerce_api

# Setup:
require "woocommerce_api"

woocommerce = WooCommerce::API.new(
  "http://example.com",
  "consumer_key",
  "consumer_secret",
  {
    version: "v2"
  }
)
```

<aside class="notice">
	Use the tabs at the top-right corner to see how to install and use each library.
</aside>

## Tools ##

* [CocoaRestClient](http://mmattozzi.github.io/cocoa-rest-client/) - A free, easy to use Mac OS X GUI client for interacting with the API, most useful when your test store has SSL enabled.
* [Paw HTTP Client](https://itunes.apple.com/us/app/paw-http-client/id584653203?mt=12) - Another excellent HTTP client for Mac OS X.
* [RESTClient, a debugger for RESTful web services](https://addons.mozilla.org/en-US/firefox/addon/restclient/) - Free Firefox add-on.
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) - Free Google Chrome extension.
