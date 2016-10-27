# Reports #

The reports API allows you to view all types of reports available.

## List all reports ##

This API lets you retrieve and view a simple list of available reports.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/reports</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/reports \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('reports', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('reports')); ?>
```

```python
print(wcapi.get("reports").json())
```

```ruby
woocommerce.get("reports").parsed_response
```

> JSON response example:

```json
[
  {
    "slug": "sales",
    "description": "List of sales reports.",
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports/sales"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports"
        }
      ]
    }
  },
  {
    "slug": "top_sellers",
    "description": "List of top sellers products.",
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports/top_sellers"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports"
        }
      ]
    }
  }
]
```

## Retrieve sales report ##

This API lets you retrieve and view a sales report.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/reports/sales</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/reports/sales?date_min=2016-05-03&date_max=2016-05-04 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('reports/sales?date_min=2016-05-03&date_max=2016-05-04', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$query = [
    'date_min' => '2016-05-03', 
    'date_max' => '2016-05-04'
];

print_r($woocommerce->get('reports/sales', $query));
?>
```

```python
print(wcapi.get("reports/sales?date_min=2016-05-03&date_max=2016-05-04").json())
```

```ruby
query = {
  date_min: "2016-05-03",
  date_max: "2016-05-04"
}

woocommerce.get("reports/sales", query).parsed_response
```

> JSON response example:

```json
[
  {
    "total_sales": "14.00",
    "net_sales": "4.00",
    "average_sales": "2.00",
    "total_orders": 3,
    "total_items": 6,
    "total_tax": "0.00",
    "total_shipping": "10.00",
    "total_refunds": 0,
    "total_discount": "0.00",
    "totals_grouped_by": "day",
    "totals": {
      "2016-05-03": {
        "sales": "14.00",
        "orders": 3,
        "items": 6,
        "tax": "0.00",
        "shipping": "10.00",
        "discount": "0.00",
        "customers": 0
      },
      "2016-05-04": {
        "sales": "0.00",
        "orders": 0,
        "items": 0,
        "tax": "0.00",
        "shipping": "0.00",
        "discount": "0.00",
        "customers": 0
      }
    },
    "total_customers": 0,
    "_links": {
      "about": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports"
        }
      ]
    }
  }
]
```

#### Sales report properties ####

|      Attribute      |   Type  |                              Description                              |
|---------------------|---------|-----------------------------------------------------------------------|
| `total_sales`       | string  | Gross sales in the period. <i class="label label-info">read-only</i>  |
| `net_sales`         | string  | Net sales in the period. <i class="label label-info">read-only</i>    |
| `average_sales`     | string  | Average net daily sales. <i class="label label-info">read-only</i>    |
| `total_orders`      | integer | Total of orders placed. <i class="label label-info">read-only</i>     |
| `total_items`       | integer | Total of items purchased. <i class="label label-info">read-only</i>   |
| `total_tax`         | string  | Total charged for taxes. <i class="label label-info">read-only</i>    |
| `total_shipping`    | string  | Total charged for shipping. <i class="label label-info">read-only</i> |
| `total_refunds`     | integer | Total of refunded orders. <i class="label label-info">read-only</i>   |
| `total_discount`    | integer | Total of coupons used. <i class="label label-info">read-only</i>      |
| `totals_grouped_by` | string  | Group type. <i class="label label-info">read-only</i>                 |
| `totals`            | array   | Totals. <i class="label label-info">read-only</i>                     |

#### Available parameters ####

| Parameter  |  Type  |                                                    Description                                                    |
|------------|--------|-------------------------------------------------------------------------------------------------------------------|
| `context`  | string | Scope under which the request is made; determines fields present in response. Default is `view`. Options: `view`. |
| `period`   | string | Report period. Default is `week`. Options: `week`, `month`, `last_month` and `year`                               |
| `date_min` | string | Return sales for a specific start date, the date need to be in the YYYY-MM-AA format.                             |
| `date_max` | string | Return sales for a specific end date, the date need to be in the YYYY-MM-AA format.                               |

## Retrieve top sellers report ##

This API lets you retrieve and view a list of top sellers report.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/reports/top_sellers</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/reports/top_sellers?period=last_month \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('reports/top_sellers?period=last_month', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$query = [
    'period' => 'last_month'
];

print_r($woocommerce->get('reports/top_sellers', $query));
?>
```

```python
print(wcapi.get("reports/top_sellers?period=last_month").json())
```

```ruby
query = {
  period: "last_month"
}

woocommerce.get("reports/top_sellers", query).parsed_response
```

> JSON response example:

```json
[
  {
    "title": "Happy Ninja",
    "product_id": 37,
    "quantity": 1,
    "_links": {
      "about": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports"
        }
      ],
      "product": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/37"
        }
      ]
    }
  },
  {
    "title": "Woo Album #4",
    "product_id": 96,
    "quantity": 1,
    "_links": {
      "about": [
        {
          "href": "https://example.com/wp-json/wc/v1/reports"
        }
      ],
      "product": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/96"
        }
      ]
    }
  }
]
```

#### Top sellers report properties ####

|      Attribute      |   Type  |                              Description                              |
|---------------------|---------|-----------------------------------------------------------------------|
| `title`             | string  | Product title. <i class="label label-info">read-only</i>              |
| `product_id`        | integer | Product ID. <i class="label label-info">read-only</i>                 |
| `quantity`          | integer | Total number of purchases. <i class="label label-info">read-only</i>  |

#### Available parameters ####

| Parameter  |  Type  |                                                    Description                                                    |
|------------|--------|-------------------------------------------------------------------------------------------------------------------|
| `context`  | string | Scope under which the request is made; determines fields present in response. Default is `view`. Options: `view`. |
| `period`   | string | Report period. Default is `week`. Options: `week`, `month`, `last_month` and `year`                               |
| `date_min` | string | Return sales for a specific start date, the date need to be in the YYYY-MM-AA format.                             |
| `date_max` | string | Return sales for a specific end date, the date need to be in the YYYY-MM-AA format.                               |
