# Index #

The API index provides information about the endpoints available for the site, as well as store-specific information. No authentication is required to access the API index, however if the REST API is disabled, you will receive a `404 Not Found` error.

> 404 Not Found response:

```json
{
  "errors" : [
    {
      "code" : "woocommerce_api_disabled",
      "message" : "The WooCommerce API is disabled on this site"
    }
  ]
}
```

## Index Properties ##

|   Attribute   |  Type  |                                                                    Description                                                                    |
| ------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`        | string | The name of the site - `get_option( 'blogname' )`                                                                                                 |
| `description` | string | The site's description - `get_option( 'blogdescription' )`                                                                                        |
| `URL`         | string | The site's URL - `get_option( 'siteurl' )`                                                                                                        |
| `wc_version`  | string | The active WooCommerce version                                                                                                                    |
| `routes`      | array  | A list of available endpoints for the site keyed by relative URL. Each endpoint specifies the HTTP methods supported as well as the canonical URL |
| `meta`        | array  | A list of WooCommerce settings used in the API. See [Meta Properties](#meta-properties)                                                           |

### Meta Properties ###

|      Attribute       |   Type  |                                               Description                                                |
|----------------------|---------|----------------------------------------------------------------------------------------------------------|
| `currency`           | string  | Currency ISO Code, e.g. `GBP`                                                                            |
| `currency_format`    | string  | Currency symbol, HTML encoded, e.g. `£`                                                                  |
| `currency_position`  | string  | Currency position, available the following options: `right`, `left`, `right_space` and `left_space`      |
| `decimal_separator`  | string  | Decimal separator, e.g `,`                                                                               |
| `dimension_unit`     | string  | The unit set for product dimensions. Valid units are `cm`, `m`, `cm`, `mm`, `in`, and `yd`               |
| `generate_password`  | boolean | Shows if the API is able to auto generate passwords for new customers                                    |
| `links`              | array   | API help links list                                                                                      |
| `permalinks_enabled` | boolean | Whether pretty permalinks are enabled on the site, if this is false, the API will not function correctly |
| `price_num_decimals` | integer | Number of decimals                                                                                       |
| `ssl_enabled`        | boolean | True if SSL is enabled for the site, false otherwise                                                     |
| `tax_included`       | boolean | True if prices include tax, false otherwise                                                              |
| `thousand_separator` | string  | Thousands separator, e.g `.`                                                                             |
| `timezone`           | string  | The site's timezone                                                                                      |
| `weight_unit`        | string  | The unit set for product weights. Valid units are `kg`, `g`, `lbs`, `oz`                                 |

## View Index List ##

Retrieve a set of store information.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.get("").json())
```

```php
<?php print_r($woocommerce->index->get()); ?>
```

```ruby
woocommerce.get("").parsed_response
```

> JSON response example:

```json
{
    "store": {
        "URL": "http://example.com",
        "description": "",
        "meta": {
            "currency": "USD",
            "currency_format": "&#36;",
            "currency_position": "left_space",
            "decimal_separator": ",",
            "dimension_unit": "in",
            "generate_password": false,
            "links": {
                "help": "http://woothemes.github.io/woocommerce-rest-api-docs/"
            },
            "permalinks_enabled": true,
            "price_num_decimals": 2,
            "ssl_enabled": true,
            "tax_included": false,
            "thousand_separator": ".",
            "timezone": "America/Sao_Paulo",
            "weight_unit": "lbs"
        },
        "name": "WooCommerce Dev",
        "routes": {
            "/": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/coupons": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/coupons"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/coupons/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/coupons/bulk": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/coupons/bulk"
                },
                "supports": [
                    "POST",
                    "PUT",
                    "PATCH"
                ]
            },
            "/coupons/code/<code>": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/coupons/count": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/coupons/count"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/customers": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/customers"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/customers/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/customers/<id>/downloads": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/customers/<id>/orders": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/customers/bulk": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/customers/bulk"
                },
                "supports": [
                    "POST",
                    "PUT",
                    "PATCH"
                ]
            },
            "/customers/count": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/customers/count"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/customers/email/<email>": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/orders": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/orders"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/orders/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/orders/<order_id>/notes": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/orders/<order_id>/notes/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/orders/<order_id>/refunds": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/orders/<order_id>/refunds/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/orders/bulk": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/orders/bulk"
                },
                "supports": [
                    "POST",
                    "PUT",
                    "PATCH"
                ]
            },
            "/orders/count": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/orders/count"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/orders/statuses": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/orders/statuses"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/products"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/products/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/products/<id>/orders": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products/<id>/reviews": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products/attributes": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/products/attributes"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/products/attributes/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/products/bulk": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/products/bulk"
                },
                "supports": [
                    "POST",
                    "PUT",
                    "PATCH"
                ]
            },
            "/products/categories": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/products/categories"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products/categories/<id>": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products/count": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/products/count"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/products/sku/<sku>": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/reports": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/reports"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/reports/sales": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/reports/sales"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/reports/sales/top_sellers": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/reports/sales/top_sellers"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/webhooks": {
                "accepts_data": true,
                "meta": {
                    "self": "http://example.com/wc-api/v2/webhooks"
                },
                "supports": [
                    "HEAD",
                    "GET",
                    "POST"
                ]
            },
            "/webhooks/<id>": {
                "accepts_data": true,
                "supports": [
                    "HEAD",
                    "GET",
                    "POST",
                    "PUT",
                    "PATCH",
                    "DELETE"
                ]
            },
            "/webhooks/<webhook_id>/deliveries": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/webhooks/<webhook_id>/deliveries/<id>": {
                "supports": [
                    "HEAD",
                    "GET"
                ]
            },
            "/webhooks/count": {
                "meta": {
                    "self": "http://example.com/wc-api/v2/webhooks/count"
                },
                "supports": [
                    "HEAD",
                    "GET"
                ]
            }
        },
        "wc_version": "2.3.13"
    }
}
```
