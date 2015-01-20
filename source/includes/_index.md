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

## Getting Store Information ##

Retrieve a set of store information.

> Store index response:

```json
{
  "store": {
    "name": "WooCommerce",
    "description": "Just a WooCommerce store",
    "URL": "http://example.com",
    "wc_version": "2.3.0",
    "routes": {
      "/": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/"
        }
      },
      "/customers": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/customers"
        },
        "accepts_data": true
      },
      "/customers/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/customers/count"
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
      "/orders": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/orders"
        },
        "accepts_data": true
      },
      "/orders/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/orders/count"
        }
      },
      "/orders/statuses": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/orders/statuses"
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
      "/products": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/products"
        },
        "accepts_data": true
      },
      "/products/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/products/count"
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
      "/products/categories": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/products/categories"
        }
      },
      "/products/categories/<id>": {
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
      "/coupons": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/coupons"
        },
        "accepts_data": true
      },
      "/coupons/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/coupons/count"
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
      "/reports": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/reports"
        }
      },
      "/reports/sales": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/reports/sales"
        }
      },
      "/reports/sales/top_sellers": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/reports/sales/top_sellers"
        }
      },
      "/webhooks": {
        "supports": [
          "HEAD",
          "GET",
          "POST"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/webhooks"
        },
        "accepts_data": true
      },
      "/webhooks/count": {
        "supports": [
          "HEAD",
          "GET"
        ],
        "meta": {
          "self": "https://example.com/wc-api/v2/webhooks/count"
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
      "timezone": "America/Sao_Paulo",
      "currency": "USD",
      "currency_format": "&#36;",
      "price_num_decimals": "2",
      "tax_included": false,
      "weight_unit": "kg",
      "dimension_unit": "cm",
      "ssl_enabled": false,
      "permalinks_enabled": true,
      "links": {
        "help": "woothemes.github.io/woocommerce-rest-api-docs/"
      }
    }
  }
}
```

### Store Properties ###

#### Base Attributes ####

|   Attribute   |  Type  |                                                                    Description                                                                    |
| ------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`        | string | The name of the site - `get_option( 'blogname' )`                                                                                                 |
| `description` | string | The site's description - `get_option( 'blogdescription' )`                                                                                        |
| `URL`         | string | The site's URL - `get_option( 'siteurl' )`                                                                                                        |
| `wc_version`  | string | The active WooCommerce version                                                                                                                    |
| `routes`      | array  | A list of available endpoints for the site keyed by relative URL. Each endpoint specifies the HTTP methods supported as well as the canonical URL |
| `meta`        | array  | A list of WooCommerce settings used in the API. [See the META ATTRIBUTES](#code-classprettyprintmetacode-attributes)                              |

##### `meta` Attributes #####

|      Attribute       |   Type  |                                               Description                                                |
| -------------------- | ------- | -------------------------------------------------------------------------------------------------------- |
| `timezone`           | string  | The site's timezone                                                                                      |
| `currency`           | string  | Currency ISO Code, e.g. `GBP`                                                                            |
| `currency_format`    | string  | Currency symbol, HTML encoded, e.g. `£`                                                                  |
| `price_num_decimals` | integer | Number of decimals                                                                                       |
| `tax_included`       | boolean | True if prices include tax, false otherwise                                                              |
| `weight_unit`        | string  | The unit set for product weights. Valid units are `kg`, `g`, `lbs`, `oz`                                 |
| `dimension_unit`     | string  | The unit set for product dimensions. Valid units are `cm`, `m`, `cm`, `mm`, `in`, and `yd`               |
| `ssl_enabled`        | boolean | True if SSL is enabled for the site, false otherwise                                                     |
| `permalinks_enabled` | boolean | Whether pretty permalinks are enabled on the site, if this is false, the API will not function correctly |
| `links`              | array   | API help links list                                                                                      |

