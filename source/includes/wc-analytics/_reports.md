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

### Products Reports properties ###

| Attribute       | Type    | Description                                                                                                                |
|-----------------|---------|----------------------------------------------------------------------------------------------------------------------------|
| `product_id`    | integer | Unique identifier for the resource. <i class="label label-info">read-only</i>                                              |
| `items_sold`    | integer | Number of items sold. <i class="label label-info">read-only</i>                                                            |
| `net_revenue`   | number  | Total Net sales of all items sold. <i class="label label-info">read-only</i>                                               |
| `orders_count`  | integer | Number of orders product appeared in. <i class="label label-info">read-only</i>                                            |
| `extended_info` | object  | Extended info for the product. See [Product Reports - Extended Info properties](#product-reports-extended-info-properties) |

#### Product Reports - Extended Info properties ####

| Attribute          | Type    | Description                                |
|--------------------|-------- |--------------------------------------------|
| `name`             | string  | Product name.                              |
| `price`            | number  | Product price.                             |
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

| Parameter             | Type    | Description                                                                                                                                                                                                                                                                                                                            |
|-----------------------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`             | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                                                                                                                                                                                             |
| `page`                | integer | Current page of the collection. Default is `1`.                                                                                                                                                                                                                                                                                        |
| `per_page`            | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                                                                                                                                                                                 |
| `after`               | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                                                                                                                                                                            |
| `before`              | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                                                                                                                                                                           |
| `order`               | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                                                                                                                                                                                            |
| `orderby`             | string  | Sort collection by object attribute. Options: `date`, `net_revenue`, `orders_count`, `items_sold`, `product_name`, `variations`, `sku`. Default is `date`.                                                                                                                                                                             |
| `force_cache_refresh` | boolean | Force retrieval of fresh data instead of from the cache.                                                                                                                                                                                                                                                                               |
| `categories`          | array   | Limit result to items from the specified categories.                                                                                                                                                                                                                                                                                   |
| `products`            | array   | Limit result to items with specified product ids.                                                                                                                                                                                                                                                                                      |
| `match`               | string  | Indicates whether all the conditions should be true for the resulting set, or if any one of them is sufficient. Match affects the following parameters: `status_is`, `status_is_not`, `product_includes`, `product_excludes`, `coupon_includes`, `coupon_excludes`, `customer`, `categories`. Options: `all`, `any`. Default is `all`. |
| `extended_info`       | boolean | Add additional piece of info about each product to the report. Default is `false`.                                                                                                                                                                                                                                                     |

## Products Stats ###

This API helps you to view all the products.

### Products Stats Reports properties ###

| Attribute   | Type   | Description                                                                                                                                                                    |
|-------------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `totals`    | object | Totals data. See [Products Stats Reports - Totals properties](#products-stats-reports-totals-properties) <i class="label label-info">read-only</i>                             |
| `intervals` | object | Reports data grouped by intervals. See [Products Stats Reports - Intervals properties](#products-stats-reports-intervals-properties) <i class="label label-info">read-only</i> |

#### Products Stats Reports - Totals properties ####

| Attribute      | Type    | Description                                                                                                                                                                          |
|----------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `items_sold`   | integer | Number of product items sold. <i class="label label-info">read-only</i>                                                                                                              |
| `net_revenue`  | number  | Net sales. <i class="label label-info">read-only</i>                                                                                                                                 |
| `orders_count` | integer | Number of orders. <i class="label label-info">read-only</i>                                                                                                                          |
| `segments`     | array   | Reports data grouped by segment condition. See [Products Stats Reports - Segments properties](#products-stats-reports-segments-properties) <i class="label label-info">read-only</i> |


##### Products Stats Reports - Segments properties #####

| Attribute    | Type    | Description                                                                                                                                                                                   |
|--------------|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `segment_id` | integer | Segment identifier. <i class="label label-info">read-only</i>                                                                                                                              |
| `subtotals`  | object  | Interval subtotals. See [Products Stats Reports - Totals properties](#products-stats-reports-totals-properties), but without `segments` attribute. <i class="label label-info">read-only</i> |

> Segments properties example

```json
[
    {
        "segment_id": 123,
        "subtotals": {
            "iitems_sold": 12,
            "net_revenue": 110,
            "orders_count": 3,
        }
    }
]
```

#### Products Stats Reports - Intervals properties ####

| Attribute        | Type   | Description                                                                                                                                                |
|------------------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `interval`       | string | Type of interval. <i class="label label-info">read-only</i>                                                                                                |
| `date_start`     | string | The date the report start, in the site's timezone. <i class="label label-info">read-only</i>                                                               |
| `date_start_gmt` | string | The date the report start, as GMT. <i class="label label-info">read-only</i>                                                                               |
| `date_end`       | string | The date the report end, in the site's timezone. <i class="label label-info">read-only</i>                                                                 |
| `date_end_gmt`   | string | The date the report end, as GMT. <i class="label label-info">read-only</i>                                                                                 |
| `subtotals`      | object | Interval subtotals. See [Products Stats Reports - Totals properties](#products-stats-reports-totals-properties). <i class="label label-info">read-only</i> |


### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports/products/stats</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc-analytics/reports/products/stats \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports/products/stats")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('reports/products/stats')); ?>
```

```python
print(wcapi.get("reports/products/stats").json())
```

```ruby
woocommerce.get("reports/products/stats").parsed_response
```

> JSON response example:

```json
{
    "totals": {
        "items_sold": 0,
        "net_revenue": 0,
        "orders_count": 0,
        "products_count": 0,
        "variations_count": 0,
        "segments": []
    },
    "intervals": [
        {
            "interval": "2024-33",
            "date_start": "2024-08-12 00:00:00",
            "date_start_gmt": "2024-08-12 00:00:00",
            "date_end": "2024-08-13 08:04:37",
            "date_end_gmt": "2024-08-13 08:04:37",
            "subtotals": {
                "items_sold": 0,
                "net_revenue": 0,
                "orders_count": 0,
                "products_count": 0,
                "variations_count": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-32",
            "date_start": "2024-08-06 08:04:37",
            "date_start_gmt": "2024-08-06 08:04:37",
            "date_end": "2024-08-11 23:59:59",
            "date_end_gmt": "2024-08-11 23:59:59",
            "subtotals": {
                "items_sold": 0,
                "net_revenue": 0,
                "orders_count": 0,
                "products_count": 0,
                "variations_count": 0,
                "segments": []
            }
        }
    ]
}
```

#### Available parameters ####

| Parameter             | Type    | Description                                                                                                                                                      |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`             | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                     |
| `page`                | integer | Current page of the collection. Default is `1`.                                                                                                                  |
| `per_page`            | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                           |
| `after`               | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                      |
| `before`              | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                     |
| `order`               | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                      |
| `orderby`             | string  | Sort collection by object attribute. Options: `date`, `coupons`, `refunds`, `shipping`, `taxes`, `net_revenue`, `orders_count`, `items_sold`. Default is `date`. |
| `force_cache_refresh` | boolean | Force retrieval of fresh data instead of from the cache.                                                                                                         |
| `categories`          | array   | Limit result to items from the specified categories.                                                                                                             |
| `products`            | array   | Limit result to items with specified product ids.                                                                                                                |
| `variations`          | array   | Limit result to items with specified variations ID.                                                                                                              |
| `segmentby`           | string  | Segment the response by additional constraint. Options: `product`, `category`, `variation`.                                                                      |
| `fields`              | array   | Limit stats fields to the specified items.                                                                                                                       |
| `interval`            | string  | Time interval to use for buckets in the returned data. Options: `hour`, `day`, `week`, `month`, `quarter`, `year`.                                               |


## Revenue Stats ###

This API helps you to view all the revenue stats.

### Revenue Stats Reports properties ###

| Attribute   | Type   | Description                                                                                                                                                                  |
|-------------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `totals`    | object | Totals data. See [Revenue Stats Reports - Totals properties](#revenue-stats-reports-totals-properties) <i class="label label-info">read-only</i>                             |
| `intervals` | object | Reports data grouped by intervals. See [Revenue Stats Reports - Intervals properties](#revenue-stats-reports-intervals-properties) <i class="label label-info">read-only</i> |

#### Revenue Stats Reports - Totals properties ####

| Attribute             | Type    | Description                                                                                                                                                                        |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `total_sales`         | number  | Total sales. <i class="label label-info">read-only</i>                                                                                                                             |
| `net_revenue`         | number  | Net sales. <i class="label label-info">read-only</i>                                                                                                                               |
| `coupons`             | number  | Amount discounted by coupons. <i class="label label-info">read-only</i>                                                                                                            |
| `coupons_count`       | number  | Unique coupons count. <i class="label label-info">read-only</i>                                                                                                                    |
| `shipping`            | number  | Total of shipping. <i class="label label-info">read-only</i>                                                                                                                       |
| `taxes`               | number  | Total of taxes. <i class="label label-info">read-only</i>                                                                                                                          |
| `refunds`             | number  | Total of returns. <i class="label label-info">read-only</i>                                                                                                                        |
| `orders_count`        | integer | Number of orders. <i class="label label-info">read-only</i>                                                                                                                        |
| `num_items_sold`      | integer | Items sold. <i class="label label-info">read-only</i>                                                                                                                              |
| `gross_sales`         | number  | Gross sales. <i class="label label-info">read-only</i>                                                                                                                             |
| `avg_items_per_order` | integer | Average items per order. <i class="label label-info">read-only</i>                                                                                                                 |
| `avg_order_value`     | number  | Average order value. <i class="label label-info">read-only</i>                                                                                                                     |
| `total_customers`     | integer | Total _customers. <i class="label label-info">read-only</i>                                                                                                                        |
| `products`            | integer | Products sold. <i class="label label-info">read-only</i>                                                                                                                           |
| `segments`            | array   | Reports data grouped by segment condition. See [Revenue Stats Reports - Segments properties](#revenue-stats-reports-segments-properties) <i class="label label-info">read-only</i> |


##### Revenue Stats Reports - Segments properties #####

| Attribute    | Type    | Description                                                                                                                                                                                 |
|--------------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `segment_id` | integer | Segment identifier. <i class="label label-info">read-only</i>                                                                                                                            |
| `subtotals`  | object  | Interval subtotals. See [Revenue Stats Reports - Totals properties](#revenue-stats-reports-totals-properties), but without `segments` attribute. <i class="label label-info">read-only</i> |

> Segments properties example

```json
[
    {
        "segment_id": 123,
        "subtotals": {
            "total_sales": 100,
            "net_revenue": 200,
            "coupons": 10,
            "coupons_count": 8,
            "shipping": 20,
            "taxes": 15,
            "refunds": 0,
            "orders_count": 24,
            "num_items_sold": 18,
            "gross_sales": 100,
            "avg_items_per_order": 100,
            "avg_order_value": 100,
            "total_customers": 100,
            "products": 100,
        }
    }
]
```

#### Revenue Stats Reports - Intervals properties ####

| Attribute        | Type   | Description                                                                                                                                              |
|------------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| `interval`       | string | Type of interval. <i class="label label-info">read-only</i>                                                                                              |
| `date_start`     | string | The date the report start, in the site's timezone. <i class="label label-info">read-only</i>                                                             |
| `date_start_gmt` | string | The date the report start, as GMT. <i class="label label-info">read-only</i>                                                                             |
| `date_end`       | string | The date the report end, in the site's timezone. <i class="label label-info">read-only</i>                                                               |
| `date_end_gmt`   | string | The date the report end, as GMT. <i class="label label-info">read-only</i>                                                                               |
| `subtotals`      | object | Interval subtotals. See [Revenue Stats Reports - Totals properties](#revenue-stats-reports-totals-properties). <i class="label label-info">read-only</i> |


### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports/revenue/stats</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc-analytics/reports/revenue/stats \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports/revenue/stats")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('reports/revenue/stats')); ?>
```

```python
print(wcapi.get("reports/revenue/stats").json())
```

```ruby
woocommerce.get("reports/revenue/stats").parsed_response
```

> JSON response example:

```json
{
    "totals": {
        "orders_count": 1,
        "num_items_sold": 4,
        "gross_sales": 107,
        "total_sales": 107,
        "coupons": 0,
        "coupons_count": 0,
        "refunds": 0,
        "taxes": 0,
        "shipping": 0,
        "net_revenue": 107,
        "avg_items_per_order": 4,
        "avg_order_value": 107,
        "total_customers": 1,
        "products": 4,
        "segments": []
    },
    "intervals": [
        {
            "interval": "2024-34",
            "date_start": "2024-08-19 00:00:00",
            "date_start_gmt": "2024-08-19 00:00:00",
            "date_end": "2024-08-22 23:59:59",
            "date_end_gmt": "2024-08-22 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-33",
            "date_start": "2024-08-12 00:00:00",
            "date_start_gmt": "2024-08-12 00:00:00",
            "date_end": "2024-08-18 23:59:59",
            "date_end_gmt": "2024-08-18 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-32",
            "date_start": "2024-08-05 00:00:00",
            "date_start_gmt": "2024-08-05 00:00:00",
            "date_end": "2024-08-11 23:59:59",
            "date_end_gmt": "2024-08-11 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-31",
            "date_start": "2024-07-29 00:00:00",
            "date_start_gmt": "2024-07-29 00:00:00",
            "date_end": "2024-08-04 23:59:59",
            "date_end_gmt": "2024-08-04 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-30",
            "date_start": "2024-07-22 00:00:00",
            "date_start_gmt": "2024-07-22 00:00:00",
            "date_end": "2024-07-28 23:59:59",
            "date_end_gmt": "2024-07-28 23:59:59",
            "subtotals": {
                "orders_count": 1,
                "num_items_sold": 4,
                "gross_sales": 107,
                "total_sales": 107,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 107,
                "avg_items_per_order": 4,
                "avg_order_value": 107,
                "total_customers": 1,
                "segments": []
            }
        },
        {
            "interval": "2024-29",
            "date_start": "2024-07-15 00:00:00",
            "date_start_gmt": "2024-07-15 00:00:00",
            "date_end": "2024-07-21 23:59:59",
            "date_end_gmt": "2024-07-21 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-28",
            "date_start": "2024-07-08 00:00:00",
            "date_start_gmt": "2024-07-08 00:00:00",
            "date_end": "2024-07-14 23:59:59",
            "date_end_gmt": "2024-07-14 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-27",
            "date_start": "2024-07-01 00:00:00",
            "date_start_gmt": "2024-07-01 00:00:00",
            "date_end": "2024-07-07 23:59:59",
            "date_end_gmt": "2024-07-07 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        }
    ]
}
```

#### Available parameters ####

| Parameter             | Type    | Description                                                                                                                                                                                    |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`             | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                                                         |
| `page`                | integer | Current page of the collection. Default is `1`.                                                                                                                                                |
| `per_page`            | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                                         |
| `after`               | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                                    |
| `before`              | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                                   |
| `order`               | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                                                    |
| `orderby`             | string  | Sort collection by object attribute. Options: `date`, `total_sales`, `coupons`, `refunds`, `shipping`, `taxes`, `net_revenue`, `orders_count`, `items_sold`, `gross_sales`. Default is `date`. |
| `force_cache_refresh` | boolean | Force retrieval of fresh data instead of from the cache.                                                                                                                                       |
| `segmentby`           | string  | Segment the response by additional constraint. Options: `product`, `category`, `variation`, `coupon`, `customer_type`.                                                                         |
| `date_type`           | string  | Override the "woocommerce_date_type" option that is used for the database date field considered for revenue reports. Options: `date_paid`, `date_created`, `date_completed`.                   |
| `interval`            | string  | Time interval to use for buckets in the returned data. Options: `hour`, `day`, `week`, `month`, `quarter`, `year`.  Default is `week`.                                                         |


## Orders ##

This API lets you retrieve and view the orders revenue, total sales, etc.

### Orders Reports properties ###

| Attribute          | Type      | Description                                                                                                            |
|--------------------|-----------|------------------------------------------------------------------------------------------------------------------------|
| `order_id`         | integer   | Order ID. <i class="label label-info">read-only</i>                                                                    |
| `parent_id`        | integer   | Order parent ID. <i class="label label-info">read-only</i>                                                             |
| `order_number`     | string    | Order number. <i class="label label-info">read-only</i>                                                                |
| `date_created`     | date-time | Date the order was created, in the site's timezone. <i class="label label-info">read-only</i>                          |
| `date_created_gmt` | date-time | Date the order was created, as GMT. <i class="label label-info">read-only</i>                                          |
| `status`           | string    | Order status.  <i class="label label-info">read-only</i>                                                               |
| `customer_id`      | integer   | Customer ID.  <i class="label label-info">read-only</i>                                                                |
| `num_items_sold`   | integer   | Number of items sold.  <i class="label label-info">read-only</i>                                                       |
| `net_total`        | float     | Net total revenue.  <i class="label label-info">read-only</i>                                                          |
| `total_sales`      | number    | Total sales.  <i class="label label-info">read-only</i>                                                                |
| `total_formatted`  | string    | Net total revenue (formatted).  <i class="label label-info">read-only</i>                                              |
| `customer_type`    | string    | Returning or new customer.  <i class="label label-info">read-only</i>                                                  |
| `extended_info`    | object    | Extended info for the order. See [Orders Reports - Extended Info properties](#orders-reports-extended-info-properties) |

#### Orders Reports - Extended Info properties ####

| Attribute     | Type   | Description                                   |
|---------------|--------|-----------------------------------------------|
| `products`    | array  | List of order product IDs, names, quantities. |
| `coupons`     | array  | List of order coupons.                        |
| `customer`    | object | Order customer information.                   |
| `attribution` | object | Order attribution information.                |

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports/orders</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc-analytics/reports/orders \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports/orders")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('reports/orders')); ?>
```

```python
print(wcapi.get("reports/orders").json())
```

```ruby
woocommerce.get("reports/orders").parsed_response
```

> JSON response example:

```json
[
    {
        "order_id": 106,
        "parent_id": 0,
        "date": "2024-07-24 08:00:19",
        "date_created": "2024-07-24 07:57:01",
        "date_created_gmt": "2024-07-24 07:57:01",
        "status": "completed",
        "customer_id": 1,
        "net_total": 107,
        "total_sales": 107,
        "num_items_sold": 4,
        "customer_type": "new",
        "extended_info": {
            "products": [
                {
                    "id": "62",
                    "name": "Beanie",
                    "quantity": "1"
                },
                {
                    "id": "79",
                    "name": "Beanie with Logo",
                    "quantity": "1"
                },
                {
                    "id": "64",
                    "name": "Cap",
                    "quantity": "1"
                },
                {
                    "id": "63",
                    "name": "Belt",
                    "quantity": "1"
                }
            ],
            "coupons": [],
            "customer": {
                "customer_id": 1,
                "user_id": null,
                "username": "",
                "first_name": "Test 1",
                "last_name": "L",
                "email": "test1@example.com",
                "date_last_active": "2024-07-24 07:57:01",
                "date_registered": null,
                "country": "TW",
                "postcode": "999",
                "city": "Taipei",
                "state": "Taipei"
            },
            "attribution": {
                "origin": "Direct"
            }
        },
        "order_number": 106,
        "total_formatted": "NT$107",
        "_links": {
            "order": [
                {
                    "href": "https://example.com/wp-json/wc-analytics/orders/106"
                }
            ]
        }
    }
]
```

#### Available parameters ####

| Parameter             | Type    | Description                                                                                                                                                                                          |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`             | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                                                               |
| `page`                | integer | Current page of the collection. Default is `1`.                                                                                                                                                      |
| `per_page`            | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                                               |
| `after`               | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                                          |
| `before`              | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                                         |
| `order`               | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                                                          |
| `orderby`             | string  | Sort collection by object attribute. Options: `date`, `num_items_sold`, `net_total`. Default is `date`.                                                                                              |
| `force_cache_refresh` | boolean | Force retrieval of fresh data instead of from the cache.                                                                                                                                             |
| `product_includes`    | array   | Limit result set to items that have the specified product(s) assigned.                                                                                                                               |
| `product_excludes`    | array   | Limit result set to items that don't have the specified product(s) assigned.                                                                                                                         |
| `variation_includes`  | array   | Limit result set to items that have the specified variation(s) assigned.                                                                                                                             |
| `variation_excludes`  | array   | Limit result set to items that don't have the specified variation(s) assigned.                                                                                                                       |
| `coupon_includes`     | array   | Limit result set to items that have the specified coupon(s) assigned.                                                                                                                                |
| `coupon_excludes`     | array   | Limit result set to items that don't have the specified coupon(s) assigned.                                                                                                                          |
| `tax_rate_includes`   | array   | Limit result set to items that have the specified tax rate(s) assigned.                                                                                                                              |
| `tax_rate_excludes`   | array   | Limit result set to items that don't have the specified tax rate(s) assigned.                                                                                                                        |
| `status_is`           | array   | Limit result set to items that have the specified order status. Options: `any`, `trash`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed`, `checkout-draft`.       |
| `status_is_not`       | array   | Limit result set to items that don't have the specified order status. Options: `any`, `trash`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed`, `checkout-draft`. |
| `customer_type`       | string  | Limit result set to returning or new customers.                                                                                                                                                      |
| `refunds`             | string  | Limit result set to specific types of refunds. Options: ` `, `all`, `partial`, `full`, `none`. Default is ` ` (empty string).                                                                         |
| `order_includes`      | array   | Limit result set to items that have the specified order ids.                                                                                                                                         |
| `order_excludes`      | array   | Limit result set to items that don't have the specified order ids.                                                                                                                                   |
| `attribute_is`        | array   | Limit result set to orders that include products with the specified attributes.                                                                                                                      |
| `attribute_is_not`    | array   | Limit result set to orders that don't include products with the specified attributes.                                                                                                                |
| `extended_info`       | boolean | Add additional piece of info about each coupon to the report.                                                                                                                                        |

## Orders Stats ###

This API helps you to view all the orders stats.

### Orders Stats Reports properties ###

| Attribute   | Type   | Description                                                                                                                                                                |
|-------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `totals`    | object | Totals data. See [Orders Stats Reports - Totals properties](#orders-stats-reports-totals-properties) <i class="label label-info">read-only</i>                             |
| `intervals` | object | Reports data grouped by intervals. See [Orders Stats Reports - Intervals properties](#orders-stats-reports-intervals-properties) <i class="label label-info">read-only</i> |

#### Orders Stats Reports - Totals properties ####

| Attribute             | Type    | Description                                                                                                                                                                      |
|-----------------------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `total_sales`         | number  | Total sales. <i class="label label-info">read-only</i>                                                                                                                           |
| `net_revenue`         | number  | Net sales. <i class="label label-info">read-only</i>                                                                                                                             |
| `orders_count`        | integer | Number of orders. <i class="label label-info">read-only</i>                                                                                                                      |
| `avg_order_value`     | number  | Average order value. <i class="label label-info">read-only</i>                                                                                                                   |
| `avg_items_per_order` | number  | Average items per order. <i class="label label-info">read-only</i>                                                                                                               |
| `num_items_sold`      | integer | Items sold. <i class="label label-info">read-only</i>                                                                                                                            |
| `coupons`             | number  | Amount discounted by coupons. <i class="label label-info">read-only</i>                                                                                                          |
| `coupons_count`       | number  | Unique coupons count. <i class="label label-info">read-only</i>                                                                                                                  |
| `total_customers`     | integer | Total customers. <i class="label label-info">read-only</i>                                                                                                                      |
| `products`            | number  | Products sold. <i class="label label-info">read-only</i>                                                                                                                         |
| `segments`            | array   | Reports data grouped by segment condition. See [Orders Stats Reports - Segments properties](#orders-stats-reports-segments-properties) <i class="label label-info">read-only</i> |
| `shipping`            | number  | Total of shipping. <i class="label label-info">read-only</i>                                                                                                                     |
| `taxes`               | number  | Total of taxes. <i class="label label-info">read-only</i>                                                                                                                        |
| `refunds`             | number  | Total of returns. <i class="label label-info">read-only</i>                                                                                                                      |
| `gross_sales`         | number  | Gross sales. <i class="label label-info">read-only</i>                                                                                                                           |

##### Orders Stats Reports - Segments properties #####

| Attribute    | Type    | Description                                                                                                                                                                               |
|--------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `segment_id` | integer | Segment identifier. <i class="label label-info">read-only</i>                                                                                                                          |
| `subtotals`  | object  | Interval subtotals. See [Orders Stats Reports - Totals properties](#orders-stats-reports-totals-properties), but without `segments` attribute. <i class="label label-info">read-only</i> |

> Segments properties example

```json
[
    {
        "segment_id": 123,
        "subtotals": {
            "total_sales": 100,
            "net_revenue": 200,
            "orders_count": 24,
            "num_items_sold": 18,
            "gross_sales": 100,
            "avg_items_per_order": 100,
            "avg_order_value": 100,
            "coupons": 10,
            "coupons_count": 8,
            "total_customers": 100,
            "products": 100,
            "shipping": 20,
            "taxes": 15,
            "refunds": 0,
        }
    }
]
```

#### Orders Stats Reports - Intervals properties ####

| Attribute        | Type   | Description                                                                                                                                                                               |
|------------------|--------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `interval`       | string | Type of interval. <i class="label label-info">read-only</i>                                                                                                                               |
| `date_start`     | string | The date the report start, in the site's timezone. <i class="label label-info">read-only</i>                                                                                              |
| `date_start_gmt` | string | The date the report start, as GMT. <i class="label label-info">read-only</i>                                                                                                              |
| `date_end`       | string | The date the report end, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                |
| `date_end_gmt`   | string | The date the report end, as GMT. <i class="label label-info">read-only</i>                                                                                                                |
| `subtotals`      | object | Interval subtotals. See [Orders Stats Reports - Totals properties](#orders-stats-reports-totals-properties), but without `products` attribute. <i class="label label-info">read-only</i> |


### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc-analytics/reports/orders/stats</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc-analytics/reports/orders/stats \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("reports/orders/stats")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('reports/orders/stats')); ?>
```

```python
print(wcapi.get("reports/orders/stats").json())
```

```ruby
woocommerce.get("reports/orders/stats").parsed_response
```

> JSON response example:

```json
{
    "totals": {
        "orders_count": 1,
        "num_items_sold": 4,
        "gross_sales": 107,
        "total_sales": 107,
        "coupons": 0,
        "coupons_count": 0,
        "refunds": 0,
        "taxes": 0,
        "shipping": 0,
        "net_revenue": 107,
        "avg_items_per_order": 4,
        "avg_order_value": 107,
        "total_customers": 1,
        "products": 4,
        "segments": []
    },
    "intervals": [
        {
            "interval": "2024-34",
            "date_start": "2024-08-19 00:00:00",
            "date_start_gmt": "2024-08-19 00:00:00",
            "date_end": "2024-08-22 23:59:59",
            "date_end_gmt": "2024-08-22 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-33",
            "date_start": "2024-08-12 00:00:00",
            "date_start_gmt": "2024-08-12 00:00:00",
            "date_end": "2024-08-18 23:59:59",
            "date_end_gmt": "2024-08-18 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-32",
            "date_start": "2024-08-05 00:00:00",
            "date_start_gmt": "2024-08-05 00:00:00",
            "date_end": "2024-08-11 23:59:59",
            "date_end_gmt": "2024-08-11 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-31",
            "date_start": "2024-07-29 00:00:00",
            "date_start_gmt": "2024-07-29 00:00:00",
            "date_end": "2024-08-04 23:59:59",
            "date_end_gmt": "2024-08-04 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-30",
            "date_start": "2024-07-22 00:00:00",
            "date_start_gmt": "2024-07-22 00:00:00",
            "date_end": "2024-07-28 23:59:59",
            "date_end_gmt": "2024-07-28 23:59:59",
            "subtotals": {
                "orders_count": 1,
                "num_items_sold": 4,
                "gross_sales": 107,
                "total_sales": 107,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 107,
                "avg_items_per_order": 4,
                "avg_order_value": 107,
                "total_customers": 1,
                "segments": []
            }
        },
        {
            "interval": "2024-29",
            "date_start": "2024-07-15 00:00:00",
            "date_start_gmt": "2024-07-15 00:00:00",
            "date_end": "2024-07-21 23:59:59",
            "date_end_gmt": "2024-07-21 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-28",
            "date_start": "2024-07-08 00:00:00",
            "date_start_gmt": "2024-07-08 00:00:00",
            "date_end": "2024-07-14 23:59:59",
            "date_end_gmt": "2024-07-14 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        },
        {
            "interval": "2024-27",
            "date_start": "2024-07-01 00:00:00",
            "date_start_gmt": "2024-07-01 00:00:00",
            "date_end": "2024-07-07 23:59:59",
            "date_end_gmt": "2024-07-07 23:59:59",
            "subtotals": {
                "orders_count": 0,
                "num_items_sold": 0,
                "gross_sales": 0,
                "total_sales": 0,
                "coupons": 0,
                "coupons_count": 0,
                "refunds": 0,
                "taxes": 0,
                "shipping": 0,
                "net_revenue": 0,
                "avg_items_per_order": 0,
                "avg_order_value": 0,
                "total_customers": 0,
                "segments": []
            }
        }
    ]
}
```

#### Available parameters ####

| Parameter             | Type    | Description                                                                                                                                                                                                                                                                                                                            |
|-----------------------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`             | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                                                                                                                                                                                           |
| `page`                | integer | Current page of the collection. Default is `1`.                                                                                                                                                                                                                                                                                        |
| `per_page`            | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                                                                                                                                                                                 |
| `after`               | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                                                                                                                                                                            |
| `before`              | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                                                                                                                                                                           |
| `order`               | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                                                                                                                                                                                            |
| `orderby`             | string  | Sort collection by object attribute. Options: `date`, `net_revenue`, `orders_count`, `avg_order_value`. Default is `date`.                                                                                                                                                                                                             |
| `force_cache_refresh` | boolean | Force retrieval of fresh data instead of from the cache.                                                                                                                                                                                                                                                                               |
| `match`               | string  | Indicates whether all the conditions should be true for the resulting set, or if any one of them is sufficient. Match affects the following parameters: `status_is`, `status_is_not`, `product_includes`, `product_excludes`, `coupon_includes`, `coupon_excludes`, `customer`, `categories`. Options: `all`, `any`. Default is `all`. |
| `status_is`           | array   | Limit result set to items that have the specified order status. Options: `any`, `trash`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed`, `checkout-draft`.                                                                                                                                         |
| `status_is_not`       | array   | Limit result set to items that don't have the specified order status. Options: `any`, `trash`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed`, `checkout-draft`.                                                                                                                                   |
| `product_includes`    | array   | Limit result set to items that have the specified product(s) assigned.                                                                                                                                                                                                                                                                 |
| `product_excludes`    | array   | Limit result set to items that don't have the specified product(s) assigned.                                                                                                                                                                                                                                                           |
| `variation_includes`  | array   | Limit result set to items that have the specified variation(s) assigned.                                                                                                                                                                                                                                                               |
| `variation_excludes`  | array   | Limit result set to items that don't have the specified variation(s) assigned.                                                                                                                                                                                                                                                         |
| `coupon_includes`     | array   | Limit result set to items that have the specified coupon(s) assigned.                                                                                                                                                                                                                                                                  |
| `coupon_excludes`     | array   | Limit result set to items that don't have the specified coupon(s) assigned.                                                                                                                                                                                                                                                            |
| `tax_rate_includes`   | array   | Limit result set to items that have the specified tax rate(s) assigned.                                                                                                                                                                                                                                                                |
| `tax_rate_excludes`   | array   | Limit result set to items that don't have the specified tax rate(s) assigned.                                                                                                                                                                                                                                                          |
| `customer`            | string  | Alias for `customer_type` (deprecated). Options: `new`, `returning`.                                                                                                                                                                                                                                                                   |
| `customer_type`       | string  | Limit result set to returning or new customers. Options: `new`, `returning`.                                                                                                                                                                                                                                                           |
| `refunds`             | string  | Limit result set to specific types of refunds.  Options: ` `, `all`, `partial`, `full`, `none`. Default is ` ` (empty string).                                                                                                                                                                                                         |
| `attribute_is`        | array   | Limit result set to orders that include products with the specified attributes.                                                                                                                                                                                                                                                        |
| `attribute_is_not`    | array   | Limit result set to orders that don't include products with the specified attributes.                                                                                                                                                                                                                                                  |
| `segmentby`           | string  | Segment the response by additional constraint. Options: `product`, `category`, `variation`, `coupon`, `customer_type`.                                                                                                                                                                                                                 |
