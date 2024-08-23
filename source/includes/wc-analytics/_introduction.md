# Introduction to Analytics REST API#

The `/wc-analytics` API is specific to the WooCommerce Analytics feature introduced in WooCommerce `4.0`. It is used internally by WooCommerce to provide analytics data in the WooCommerce admin dashboard under the Analytics section. This namespace includes endpoints for accessing detailed reports on sales, revenue, orders, and other analytics metrics.

Key characteristics of the `/wc-analytics` API include:

- **Analytics-Focused**: Provides endpoints specifically for retrieving analytics and reporting data.
- **Public and Extensible**: While it powers the internal WooCommerce Analytics section, it is a public API available for developers to integrate with, allowing for custom reporting and analytics extensions.
- **Non-Versioned**: Currently, it does not use versioning, allowing WooCommerce developers to make changes as needed to support analytics features.

To use the `/wc-analytics` API, you must enable WooCommerce Analytics in your store's settings. For more information about WooCommerce Analytics, see [WooCommerce Analytics documentation](https://woocommerce.com/document/woocommerce-analytics/).

## Requirements ##

To use the WooCommerce Analytics REST APIs, there are several requirements and considerations to ensure proper functionality and access. Here are the key requirements:

- WooCommerce 4.0+.
- WordPress 5.3+.
- **Enable WooCommerce Analytics**: Analytics must be enabled in the WooCommerce settings. This feature is part of the WooCommerce Admin and should be activated to use the `/wc-analytics` API endpoints.
- Pretty permalinks in `Settings > Permalinks` so that the custom endpoints are supported. __Default permalinks will not work.__
- You may access the API over either HTTP or HTTPS, but *HTTPS is recommended where possible*.

By meeting these requirements, you can effectively use the WooCommerce Analytics REST APIs to access and manage analytics data in your WooCommerce store. For detailed setup and configuration instructions, you can refer to the WooCommerce REST API documentation and WooCommerce support pages.

<aside class="notice">
	Please note that you are <strong>not</strong> required to install the <a href="https://wordpress.org/plugins/rest-api/" target="_blank">WP REST API (WP API)</a> plugin.
</aside>

## Request/Response Format ##

The default response format is JSON. Requests with a message-body use plain JSON to set or update resource attributes. Successful requests will return a `200 OK` HTTP status.

Some general information about responses:

* Dates are returned in ISO8601 format: `YYYY-MM-DDTHH:MM:SS`
* Resource IDs are returned as integers.
* Any decimal monetary amount, such as prices or totals, will be returned as strings with two decimal places.
* Other amounts, such as item counts, are returned as integers.
* Blank fields are generally included as `null` or emtpy string instead of being omitted.

### JSONP Support ###

The WP REST API supports JSONP by default. JSONP responses use the `application/javascript` content-type. You can specify the callback using the `?_jsonp` parameter for `GET` requests to have the response wrapped in a JSON function:

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3?_jsonp=callback</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/products/tags/34?_jsonp=tagDetails \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("products/tags/34?_jsonp=tagDetails")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('products/tags/34', ['_jsonp' => 'tagDetails'])); ?>
```

```python
print(wcapi.get("products/tags/34?_jsonp=tagDetails").json())
```

```ruby
woocommerce.get("products/tags/34", _jsonp: "tagDetails").parsed_response
```

> Response:

```
/**/tagDetails({"id":34,"name":"Leather Shoes","slug":"leather-shoes","description":"","count":0,"_links":{"self":[{"href":"https://example.com/wp-json/wc/v3/products/tags/34"}],"collection":[{"href":"https://example.com/wp-json/wc/v3/products/tags"}]}})%
```

## Errors ##

Occasionally you might encounter errors when accessing the REST API. There are four possible types:

| Error Code                  | Error Type                                                  |
|-----------------------------|-------------------------------------------------------------|
| `400 Bad Request`           | Invalid request, e.g. using an unsupported HTTP method      |
| `401 Unauthorized`          | Authentication or permission error, e.g. incorrect API keys |
| `404 Not Found`             | Requests to resources that don't exist or are missing       |
| `500 Internal Server Error` | Server error                                                |

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
Link: <https://www.example.com/wp-json/wc/v3/products?page=2>; rel="next",
<https://www.example.com/wp-json/wc/v3/products?page=3>; rel="last"`
```

The possible `rel` values are:

|  Value  |                       Description                        |
|---------|----------------------------------------------------------|
| `next`  | Shows the URL of the immediate next page of results.     |
| `last`  | Shows the URL of the last page of results.               |
| `first` | Shows the URL of the first page of results.              |
| `prev`  | Shows the URL of the immediate previous page of results. |

## Libraries and Tools ##

### Official libraries ###

- [JavaScript](https://www.npmjs.com/package/@woocommerce/woocommerce-rest-api) Library
- [PHP](https://packagist.org/packages/automattic/woocommerce) Library
- [Python](https://pypi.python.org/pypi/WooCommerce) Library
- [Ruby](https://rubygems.org/gems/woocommerce_api) Library

**Please note that to access the `wc-analytics` namespace, the version must be specified as `wc-analytics` in the libraries.**

```javascript
// Install:
// npm install --save @woocommerce/woocommerce-rest-api

// Setup:
const WooCommerceRestApi = require("@woocommerce/woocommerce-rest-api").default;
// import WooCommerceRestApi from "@woocommerce/woocommerce-rest-api"; // Supports ESM

const WooCommerce = new WooCommerceRestApi({
  url: 'http://example.com', // Your store URL
  consumerKey: 'consumer_key', // Your consumer key
  consumerSecret: 'consumer_secret', // Your consumer secret
  version: 'wc-analytics' // WooCommerce WP REST API version
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
        'version' => 'wc-analytics' // WooCommerce WP REST API version
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
    version="wc-analytics" # WooCommerce WP REST API version
)
```

```ruby
# Install:
# gem install woocommerce_api

# Setup:
require "woocommerce_api"

woocommerce = WooCommerce::API.new(
  "https://example.com", # Your store URL
  "consumer_key", # Your consumer key
  "consumer_secret", # Your consumer secret
  {
    wp_api: true, # Enable the WP REST API integration
    version: "wc-analytics" # WooCommerce WP REST API version
  }
)
```

<aside class="notice">
	Use the tabs in the top-right corner of this page to see how to install and use each library.
</aside>

### Third party libraries ###

- [Java](https://github.com/icoderman/wc-api-java) Library
- [.NET](https://github.com/XiaoFaye/WooCommerce.NET) Library
- [Android](https://github.com/gilokimu/WooDroid) Library

<aside class="notice">
	Note that we don't offer support for third party libraries, so if you have questions about how use any of this libraries you should contact the respective authors.
</aside>

### Tools ###

Some useful tools you can use to access the API include:

- [Insomnia](https://insomnia.rest) - Cross-platform GraphQL and REST client, available for Mac, Windows, and Linux.
- [Postman](https://www.getpostman.com/) - Cross-platform REST client, available for Mac, Windows, and Linux.
- [RequestBin](https://requestbin.com) - Allows you test webhooks.
- [Hookbin](https://hookbin.com/) - Another tool to test webhooks.

## Learn more ##

Learn more about the REST API checking the <a href="https://developer.wordpress.org/rest-api/">official WordPress REST API documentation</a>.
