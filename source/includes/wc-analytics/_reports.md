# Analytics Reports #

The reports API enables you to view analytics data on products, sales, revenue, orders, and more.

## List all the reports endpoints ##

This API helps you to list all the endpoints regarding reports.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports</h6>
	</div>
</div>

> Example of how to list all the enpoints regarding WC Analytics reports:

```shell
curl https://example.com/wp-json/wc-analytics/reports \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php
print_r($woocommerce->get('reports'));
?>
```

```python
print(wcapi.get("reports").json())
```

```ruby
woocommerce.post("reports").parsed_response
```

> JSON response example:

```json
[
    {
        "slug": "performance-indicators",
        "description": "Batch endpoint for getting specific performance indicators from `stats` endpoints.",
        "path": "/wc-analytics/reports/performance-indicators",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/performance-indicators"
                }
            ],
            "report": [
                {
                    "href": "/analytics/performance-indicators"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "revenue/stats",
        "description": "Stats about revenue.",
        "path": "/wc-analytics/reports/revenue/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/revenue/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/revenue"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "orders/stats",
        "description": "Stats about orders.",
        "path": "/wc-analytics/reports/orders/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/orders/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/orders"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "products",
        "description": "Products detailed reports.",
        "path": "/wc-analytics/reports/products",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/products"
                }
            ],
            "report": [
                {
                    "href": "/analytics/products"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "products/stats",
        "description": "Stats about products.",
        "path": "/wc-analytics/reports/products/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/products/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/products"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "variations",
        "description": "Variations detailed reports.",
        "path": "/wc-analytics/reports/variations",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/variations"
                }
            ],
            "report": [
                {
                    "href": "/analytics/variations"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "variations/stats",
        "description": "Stats about variations.",
        "path": "/wc-analytics/reports/variations/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/variations/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/variations"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "categories",
        "description": "Product categories detailed reports.",
        "path": "/wc-analytics/reports/categories",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/categories"
                }
            ],
            "report": [
                {
                    "href": "/analytics/categories"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "categories/stats",
        "description": "Stats about product categories.",
        "path": "/wc-analytics/reports/categories/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/categories/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/categories"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "coupons",
        "description": "Coupons detailed reports.",
        "path": "/wc-analytics/reports/coupons",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/coupons"
                }
            ],
            "report": [
                {
                    "href": "/analytics/coupons"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "coupons/stats",
        "description": "Stats about coupons.",
        "path": "/wc-analytics/reports/coupons/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/coupons/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/coupons"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "taxes",
        "description": "Taxes detailed reports.",
        "path": "/wc-analytics/reports/taxes",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/taxes"
                }
            ],
            "report": [
                {
                    "href": "/analytics/taxes"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "taxes/stats",
        "description": "Stats about taxes.",
        "path": "/wc-analytics/reports/taxes/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/taxes/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/taxes"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "downloads",
        "description": "Product downloads detailed reports.",
        "path": "/wc-analytics/reports/downloads",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/downloads"
                }
            ],
            "report": [
                {
                    "href": "/analytics/downloads"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "downloads/files",
        "description": "Product download files detailed reports.",
        "path": "/wc-analytics/reports/downloads/files",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/downloads/files"
                }
            ],
            "report": [
                {
                    "href": "/analytics/downloads/files"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "downloads/stats",
        "description": "Stats about product downloads.",
        "path": "/wc-analytics/reports/downloads/stats",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/downloads/stats"
                }
            ],
            "report": [
                {
                    "href": "/analytics/downloads"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    },
    {
        "slug": "customers",
        "description": "Customers detailed reports.",
        "path": "/wc-analytics/reports/customers",
        "_links": {
            "self": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports/customers"
                }
            ],
            "report": [
                {
                    "href": "/analytics/customers"
                }
            ],
            "collection": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/reports"
                }
            ]
        }
    }
]
```

## Products ##

This API lets you retrieve and view the product item sales, net revenue, and the corredsponding orders.

### Products Reports properties ##

| Attribute       | Type    | Description                                                                                                          |
|-----------------|---------|----------------------------------------------------------------------------------------------------------------------|
| `product_id`    | integer | Unique identifier for the resource. <i class="label label-info">read-only</i>                                        |
| `items_sold`    | integer | Number of items sold. <i class="label label-info">read-only</i>                                                                                                        |
| `net_revenue`   | integer | Total Net sales of all items sold. <i class="label label-info">read-only</i>                  |
| `orders_count`  | integer | Number of orders product appeared in. <i class="label label-info">read-only</i>                                  |
| `extended_info` | object  | Extended info for the product. See [Product Reports - Extended Info properties](#product-reports-extended-info-properties)                            |

#### Product Reports - Extended Info properties ###

| Attribute          | Type    | Description                                |
|--------------------|-------- |--------------------------------------------|
| `name`             | string  | Product name.                              |
| `price`            | integer | Product price.                             |
| `image`            | string  | Product image.                             |
| `permalink`        | string  | Product link.                              |
| `category_ids`     | array   | Product category IDs.                      |
| `stock_status`     | string  | Product inventory status.                  |
| `stock_quantity`   | integer | Product inventory quantity.                |
| `low_stock_amount` | integer | Product inventory threshold for low stock. |
| `variations`       | array   | Product variations IDs.                    |
| `sku`              | string  | Product SKU.                               |

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports/products</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc-analytics/reports/products \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports/products")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('reports/products')); ?>
```

```python
print(wcapi.get("reports/products").json())
```

```ruby
woocommerce.get("reports/products").parsed_response
```

> JSON response example:

```json
[
    {
        "product_id": 62,
        "items_sold": 1,
        "net_revenue": 18,
        "orders_count": 1,
        "extended_info": {},
        "_links": {
            "product": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/products/62"
                }
            ]
        }
    },
    {
        "product_id": 63,
        "items_sold": 1,
        "net_revenue": 55,
        "orders_count": 1,
        "extended_info": {},
        "_links": {
            "product": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/products/63"
                }
            ]
        }
    },
    {
        "product_id": 64,
        "items_sold": 1,
        "net_revenue": 16,
        "orders_count": 1,
        "extended_info": {},
        "_links": {
            "product": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/products/64"
                }
            ]
        }
    },
    {
        "product_id": 79,
        "items_sold": 1,
        "net_revenue": 18,
        "orders_count": 1,
        "extended_info": {},
        "_links": {
            "product": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/products/79"
                }
            ]
        }
    }
]
```

#### Available parameters ####

| Parameter         | Type    | Description                                                                                                                                                               |
|-------------------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`         | string  | cope under which the request is made; determines fields present in response. Options: view and edit. Default is view.
| `page`            | integer | Current page of the collection. Default is `1`.                                                                                                                           |
| `per_page`        | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                    |
| `after`           | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                               |
| `before`          | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                              |
| `order`           | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                               |
| `orderby`         | string  | Sort collection by object attribute. Options: `date`, `net_revenue`, `orders_count`, `items_sold`, `product_name`, `variations`, `sku`. Default is `date`. |
| `force_cache_refresh` | boolean  | Force retrieval of fresh data instead of from the cache. |
| `categories` | array  | Limit result to items from the specified categories. |
| `products` | array  | Limit result to items with specified product ids. |
| `match`         | string  | Indicates whether all the conditions should be true for the resulting set, or if any one of them is sufficient. Match affects the following parameters: `status_is`, `status_is_not`, `product_includes`, `product_excludes`, `coupon_includes`, `coupon_excludes`, `customer`, `categorie`. Options: `all`, `any`. Default is `all`. |
| `extended_info` | boolean  | Add additional piece of info about each product to the report. Default is `false`. |

