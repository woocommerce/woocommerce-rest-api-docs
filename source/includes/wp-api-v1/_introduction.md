# Introduction #

WooCommerce 2.6+ is fully integrated with the WordPress [REST](http://en.wikipedia.org/wiki/Representational_State_Transfer) API. This allows WooCommerce data to be created, read, updated, and deleted using requests in JSON format, and using WordPress REST API Authentication methods, and standard HTTP verbs, which are understood by most HTTP clients.

The current WP REST API integration version is `v1` which takes a first-order position in endpoints. The following table shows API versions present in each major version of WooCommerce:

| Version | WooCommerce Version | WordPress Version    |
|---------|---------------------|----------------------|
| `v1`    | 2.6.x               | 4.4 or later         |

## Requirements ##

To use the latest version of the REST API you must be using:

* WooCommerce 2.6+
* WordPress 4.4+
* Pretty permalinks in `Settings > Permalinks` so that the custom endpoints are supported. __Default permalinks will not work.__
* You may access the API over either HTTP or HTTPS, but *HTTPS is recommended where possible*.

If you use ModSecurity and see `501 Method Not Implemented` errors, see [this issue](https://github.com/woothemes/woocommerce/issues/9838) for details.

<aside class="notice">
	Note that is <strong>NOT REQUIRED</strong> install the <a href="https://wordpress.org/plugins/rest-api/" target="_blank">WP REST API (WP API)</a> plugin.
</aside>

## Legacy API ##

Prior to 2.6, WooCommerce had it's own REST API independent from WordPress. The differences between the new API and legacy API are as follows:

* In the new API, the WordPress REST API handles authentication instead of our API.
* The WP REST API integration includes batch endpoints for coupons, customers, orders, refunds, products, attributes, categories, tags, taxes and webhooks.
* New formats and parameters for coupons, orders, products and some taxomonies to reflect changes in the WooCommerce core.
* We've adopted the use of schemas for all endpoints (accessed when doing OPTIONS requests).

Our API Keys, authentication endpoint and webhooks still work with the new API.

Documentation for the legacy APIs can be found below:

* [WooCommerce REST API v1 docs](v1.html)
* [WooCommerce REST API v2 docs](v2.html)
* [WooCommerce REST API v3 docs](v3.html)

## Request/Response Format ##

The default response format is JSON. Requests with a message-body use plain JSON to set or update resource attributes. Successful requests will return a `200 OK` HTTP status.

Some general information about responses:

* Dates are returned in [RFC3339](http://www.ietf.org/rfc/rfc3339.txt) format in UTC timezone: `YYYY-MM-DDTHH:MM:SSZ`
* Resource IDs are returned as integers.
* Any decimal monetary amount, such as prices or totals, will be returned as strings with two decimal places.
* Other amounts, such as item counts, are returned as integers.
* Blank fields are generally included as `null` instead of being returned as blank strings or omitted.

### JSONP Support ###

The WP REST API supports JSONP by default. JSONP responses use the `application/javascript` content-type. You can specify the callback using the `?_jsonp` parameter for `GET` requests to have the response wrapped in a JSON function:

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1?_jsonp=callback</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/tags/34?_jsonp=tagDetails \
	-u consumer_key:consumer_secret
```

> Response:

```
/**/tagDetails({"id":34,"name":"Leather Shoes","slug":"leather-shoes","description":"","count":0,"_links":{"self":[{"href":"https://example.com/wp-json/wc/v1/products/tags/34"}],"collection":[{"href":"https://example.com/wp-json/wc/v1/products/tags"}]}})%
```

## Errors ##

Occasionally you might encounter errors when accessing the REST API. There are four possible types:

* Invalid requests, such as using an unsupported HTTP method will result in `400 Bad Request`.
* Authentication or permission errors, such as incorrect API keys will result in `401 Unauthorized`.
* Requests to resources that don't exist or are missing required parameters will result in `404 Not Found`.
* Requests that cannot be processed due to a server error will result in `500 Internal Server Error`.

> WP REST API error example:

```json
{
  "code": "rest_no_route",
  "message": "No route was found matching the URL and request method",
  "data": {
    "status": 404
  }
}
```

> WooCommerce REST API error example:

```json
{
  "code": "woocommerce_rest_term_invalid",
  "message": "Resource doesn't exist.",
  "data": {
    "status": 404
  }
}
```

Errors return both an appropriate HTTP status code and response object which contains a `code`, `message` and `data` attribute.

## Parameters ##

Almost all endpoints accept optional parameters which can be passed as a HTTP query string parameter, e.g. `GET /orders?status=completed`. All parameters are documented along each endpoint.

## Pagination ##

Requests that return multiple items will be paginated to 10 items by default. This default can be changed by the site administrator by changing the `posts_per_page` option. Alternatively the items per page can be specified with the `?per_page` parameter:

`GET /orders?per_page=15`

You can specify further pages with the `?page` parameter:

`GET /orders?page=2`

You may also specify the offset from the first resource using the `?offset` parameter:

`GET /orders?offset=5`

Page number is 1-based and omitting the `?page` parameter will return the first page.

The total number of resources and pages are always included in the `X-WP-Total` and `X-WP-TotalPages` HTTP headers.

### Link Header ###

Pagination info is included in the [Link Header](http://tools.ietf.org/html/rfc5988). It's recommended that you follow these values instead of building your own URLs where possible.

```
Link: <https://www.example.com/wp-json/wc/v1/products?page=2>; rel="next",
<https://www.example.com/wp-json/wc/v1/products?page=3>; rel="last"`
```

*Linebreak included for readability*

The possible `rel` values are:

|  Value  |                       Description                        |
|---------|----------------------------------------------------------|
| `next`  | Shows the URL of the immediate next page of results.     |
| `last`  | Shows the URL of the last page of results.               |
| `first` | Shows the URL of the first page of results.              |
| `prev`  | Shows the URL of the immediate previous page of results. |

## Libraries and Tools ##

- [Node.js](https://www.npmjs.com/package/woocommerce-api) Library
- [PHP](https://packagist.org/packages/automattic/woocommerce) Library
- [Python](https://pypi.python.org/pypi/WooCommerce) Library
- [Ruby](https://rubygems.org/gems/woocommerce_api) Library

```javascript
// Install:
// npm install --save woocommerce-api

// Setup:
var WooCommerceAPI = require('woocommerce-api');

var WooCommerce = new WooCommerceAPI({
  url: 'http://example.com', // Your store URL
  consumerKey: 'consumer_key', // Your consumer key
  consumerSecret: 'consumer_secret', // Your consumer secret
  wp_api: true, // Enable the WP REST API integration
  version: 'wc/v1' // WooCommerce WP REST API version
});
```

```php
<?php
// Install:
// composer require automattic/woocommerce

// Setup:
require __DIR__ . '/vendor/autoload.php';

use Automattic\WooCommerce\Client;

$woocommerce = new Client(
    'http://example.com', // Your store URL
    'consumer_key', // Your consumer key
    'consumer_secret', // Your consumer secret
    [
        'wp_api' => true, // Enable the WP REST API integration
        'version' => 'wc/v1' // WooCommerce WP REST API version
    ]
);
?>
```

```python
# Install:
# pip install woocommerce

# Setup:
from woocommerce import API

wcapi = API(
    url="http://example.com", # Your store URL
    consumer_key="consumer_key", # Your consumer key
    consumer_secret="consumer_secret", # Your consumer secret
    wp_api=True, # Enable the WP REST API integration
    version="wc/v1" # WooCommerce WP REST API version
)
```

```ruby
# Install:
# gem install woocommerce_api

# Setup:
require "woocommerce_api"

woocommerce = WooCommerce::API.new(
  "http://example.com", # Your store URL
  "consumer_key", # Your consumer key
  "consumer_secret", # Your consumer secret
  {
    wp_json: true, # Enable the WP REST API integration
    version: "v3" # WooCommerce WP REST API version
  }
)
```

<aside class="notice">
	Use the tabs in the top-right corner of this page to see how to install and use each library.
</aside>

Some useful tools you can use to access the API include:

* [CocoaRestClient](http://mmattozzi.github.io/cocoa-rest-client/) - A free, easy to use Mac OS X GUI client for interacting with the API, most useful when your test store has SSL enabled.
* [Paw HTTP Client](https://itunes.apple.com/us/app/paw-http-client/id584653203?mt=12) - Another excellent HTTP client for Mac OS X.
* [RESTClient, a debugger for RESTful web services](https://addons.mozilla.org/en-US/firefox/addon/restclient/) - Free Firefox add-on.
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) - Free Google Chrome extension.
