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
| `version`     | string | REST API version                                                                                                                                  |
| `routes`      | array  | A list of available endpoints for the site keyed by relative URL. Each endpoint specifies the HTTP methods supported as well as the canonical URL |
| `meta`        | array  | A list of WooCommerce settings used in the API. See [Meta Properties](#meta-properties)                                                           |

<aside class="notice">
	<code>version</code> attribute is available starting from WooCommerce 2.5.
</aside>

### Meta Properties ###

|      Attribute       |   Type  |                                               Description                                                |
|----------------------|---------|----------------------------------------------------------------------------------------------------------|
| `timezone`           | string  | The site's timezone                                                                                      |
| `currency`           | string  | Currency ISO Code, e.g. `GBP`                                                                            |
| `currency_format`    | string  | Currency symbol, HTML encoded, e.g. `£`                                                                  |
| `currency_position`  | string  | Currency position, available the following options: `right`, `left`, `right_space` and `left_space`      |
| `thousand_separator` | string  | Thousands separator, e.g `.`                                                                             |
| `decimal_separator`  | string  | Decimal separator, e.g `,`                                                                               |
| `price_num_decimals` | integer | Number of decimals                                                                                       |
| `tax_included`       | boolean | True if prices include tax, false otherwise                                                              |
| `weight_unit`        | string  | The unit set for product weights. Valid units are `kg`, `g`, `lbs`, `oz`                                 |
| `dimension_unit`     | string  | The unit set for product dimensions. Valid units are `cm`, `m`, `cm`, `mm`, `in`, and `yd`               |
| `ssl_enabled`        | boolean | True if SSL is enabled for the site, false otherwise                                                     |
| `permalinks_enabled` | boolean | Whether pretty permalinks are enabled on the site, if this is false, the API will not function correctly |
| `generate_password`  | boolean | Shows if the API is able to auto generate passwords for new customers                                    |
| `links`              | array   | API help links list                                                                                      |

## View Index List ##

Retrieve a set of store information.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('')); ?>
```

```python
print(wcapi.get("").json())
```

```ruby
woocommerce.get("").parsed_response
```

> JSON response example:

```json
{
  "store": {
    "name": "WooCommerce Dev",
    "description": "",
    "URL": "http://example.com",
    "wc_version": "2.5.0",
    "version": "3.1.0",
    "routes": {
      "/": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/"
        }
      },
      "/coupons": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/coupons"
        },
        "accepts_data": true
      },
      "/coupons/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/coupons/count"
        }
      },
      "/coupons/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/coupons/code/<code>": {
        "supports": [
          "HEAD",
          "GET"
        ]
      },
      "/coupons/bulk": {
        "accepts_data": true,
        "meta": {
          "self": "http://example.com/wc-api/v3/coupons/bulk"
        },
        "supports": [
          "POST",
          "PUT",
          "PATCH"
        ]
      },
      "/customers": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/customers"
        },
        "accepts_data": true
      },
      "/customers/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/customers/count"
        }
      },
      "/customers/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/customers/email/<email>": {
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
      "/customers/<id>/downloads": {
        "supports": [
          "HEAD",
          "GET"
        ]
      },
      "/customers/bulk": {
        "accepts_data": true,
        "meta": {
          "self": "http://example.com/wc-api/v3/customers/bulk"
        },
        "supports": [
          "POST",
          "PUT",
          "PATCH"
        ]
      },
      "/orders": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/orders"
        },
        "accepts_data": true
      },
      "/orders/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/orders/count"
        }
      },
      "/orders/statuses": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/orders/statuses"
        }
      },
      "/orders/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/orders/<order_id>/notes": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "accepts_data": true
      },
      "/orders/<order_id>/notes/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/orders/<order_id>/refunds": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "accepts_data": true
      },
      "/orders/<order_id>/refunds/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/orders/bulk": {
        "accepts_data": true,
        "meta": {
          "self": "http://example.com/wc-api/v3/orders/bulk"
        },
        "supports": [
          "POST",
          "PUT",
          "PATCH"
        ]
      },
      "/products": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products"
        },
        "accepts_data": true
      },
      "/products/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products/count"
        }
      },
      "/products/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/<id>/reviews": {
        "supports": [
          "HEAD",
          "GET"
        ]
      },
      "/products/<id>/orders": {
        "supports": [
          "HEAD",
          "GET"
        ]
      },
      "/products/categories": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products/categories"
        },
        "accepts_data": true
      },
      "/products/categories/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/tags": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products/tags"
        },
        "accepts_data": true
      },
      "/products/tags/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/shipping_classes": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products/shipping_classes"
        },
        "accepts_data": true
      },
      "/products/shipping_classes/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/attributes": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/products/attributes"
        },
        "accepts_data": true
      },
      "/products/attributes/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/attributes/<attribute_id>/terms": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "accepts_data": true
      },
      "/products/attributes/<attribute_id>/terms/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/products/bulk": {
        "accepts_data": true,
        "meta": {
          "self": "http://example.com/wc-api/v3/products/bulk"
        },
        "supports": [
          "POST",
          "PUT",
          "PATCH"
        ]
      },
      "/reports": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/reports"
        }
      },
      "/reports/sales": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/reports/sales"
        }
      },
      "/reports/sales/top_sellers": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/reports/sales/top_sellers"
        }
      },
      "/taxes": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/taxes"
        },
        "accepts_data": true
      },
      "/taxes/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/taxes/count"
        }
      },
      "/taxes/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
      },
      "/taxes/classes": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/taxes/classes"
        },
        "accepts_data": true
      },
      "/taxes/classes/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/taxes/classes/count"
        }
      },
      "/taxes/classes/<slug>": {
        "supports": [
          "DELETE"
        ]
      },
      "/taxes/bulk": {
        "accepts_data": true,
        "meta": {
          "self": "http://example.com/wc-api/v3/taxes/bulk"
        },
        "supports": [
          "POST",
          "PUT",
          "PATCH"
        ]
      },
      "/webhooks": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/webhooks"
        },
        "accepts_data": true
      },
      "/webhooks/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "http://example.com/wc-api/v3/webhooks/count"
        }
      },
      "/webhooks/<id>": {
        "supports": [
          "HEAD",
          "GET",
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "accepts_data": true
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
      }
    },
    "meta": {
      "timezone": "America/Los_Angeles",
      "currency": "USD",
      "currency_format": "&#36;",
      "currency_position": "left",
      "thousand_separator": ".",
      "decimal_separator": ",",
      "price_num_decimals": 2,
      "tax_included": false,
      "weight_unit": "lbs",
      "dimension_unit": "in",
      "ssl_enabled": false,
      "permalinks_enabled": true,
      "generate_password": false,
      "links": {
        "help": "http://woothemes.github.io/woocommerce-rest-api-docs/"
      }
    }
  }
}
```
