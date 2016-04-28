# Reports #

This section lists all API endpoints that can be used view reports.

## Reports Filters ##

Use the following filters for any type of report to specify the period of sales:

|   Filter   |  Type  |                                                                                Description                                                                                 |
| ---------- | ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `period`   | string | The supported periods are: `week`, `month`, `last_month`, and `year`. If you use an invalid period, `week` is used. If you don't specify a period, the current day is used |
| `date_min` | string | Return sales for a specific start date. The date need to be in the `YYYY-MM-AA` format                                                                                     |
| `date_max` | string | Return sales for a specific end date. The dates need to be in the `YYYY-MM-AA` format. Required to set the `filter[date_min]` too                                          |

## View List of Reports ##

This API lets you retrieve and view a simple list of available reports.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/reports</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/reports \
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
{
  "reports": [
    "sales",
    "sales/top_sellers"
  ]
}
```

## View List of Sales Report ##

This API lets you retrieve and view a list of sales report.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/reports/sales</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/reports/sales?filter[date_min]=2015-01-18&filter[date_max]=2015-01-21 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('reports/sales?filter[date_min]=2015-01-18&filter[date_max]=2015-01-21', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$query = [
    'filter' => [
        'date_min' => '2015-01-18', 
        'date_max' => '2015-01-21'
    ]
];

print_r($woocommerce->get('reports/sales', $query));
?>
```

```python
print(wcapi.get("reports/sales?filter[date_min]=2015-01-18&filter[date_max]=2015-01-21").json())
```

```ruby
query = {
  filter: {
    date_min: "2015-01-18",
    date_max: "2015-01-21"
  }
}

woocommerce.get("reports/sales", query).parsed_response
```

> JSON response example:

```json
{
  "sales": {
    "total_sales": "580.10",
    "average_sales": "145.03",
    "total_orders": 4,
    "total_items": 31,
    "total_tax": "26.10",
    "total_shipping": "20.00",
    "total_discount": "0.00",
    "totals_grouped_by": "day",
    "totals": {
      "2015-01-18": {
        "sales": "-17.00",
        "orders": 1,
        "items": 1,
        "tax": "0.00",
        "shipping": "0.00",
        "discount": "0.00",
        "customers": 0
      },
      "2015-01-19": {
        "sales": "0.00",
        "orders": 0,
        "items": 0,
        "tax": "0.00",
        "shipping": "0.00",
        "discount": "0.00",
        "customers": 0
      },
      "2015-01-20": {
        "sales": "0.00",
        "orders": 0,
        "items": 0,
        "tax": "0.00",
        "shipping": "0.00",
        "discount": "0.00",
        "customers": 0
      },
      "2015-01-21": {
        "sales": "597.10",
        "orders": 3,
        "items": 30,
        "tax": "26.10",
        "shipping": "20.00",
        "discount": "0.00",
        "customers": 0
      }
    },
    "total_customers": 0
  }
}
```

## View List of Top Sellers Report ##

This API lets you retrieve and view a list of top sellers report.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/reports/sales/top_sellers</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/reports/sales/top_sellers?filter[period]=last_month \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('reports/sales/top_sellers?filter[period]=last_month', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$query = [
    'filter' => [
        'period' => 'last_month'
    ]
];

print_r($woocommerce->get('reports/sales/top_sellers', $query));
?>
```

```python
print(wcapi.get("reports/sales/top_sellers?filter[period]=last_month").json())
```

```ruby
query = {
  filter: {
    period: "last_month"
  }
}

woocommerce.get("reports/sales/top_sellers", query).parsed_response
```

> JSON response example:

```json
{
  "top_sellers": [
    {
      "title": "Happy Ninja",
      "product_id": "37",
      "quantity": "24"
    },
    {
      "title": "Flying Ninja",
      "product_id": "70",
      "quantity": "14"
    },
    {
      "title": "Happy Ninja",
      "product_id": "53",
      "quantity": "6"
    },
    {
      "title": "Ninja Silhouette",
      "product_id": "31",
      "quantity": "3"
    },
    {
      "title": "Woo Logo",
      "product_id": "15",
      "quantity": "3"
    },
    {
      "title": "Woo Album #1",
      "product_id": "83",
      "quantity": "3"
    },
    {
      "title": "Woo Album #4",
      "product_id": "96",
      "quantity": "1"
    },
    {
      "title": "Premium Quality",
      "product_id": "19",
      "quantity": "1"
    },
    {
      "title": "Ninja Silhouette",
      "product_id": "56",
      "quantity": "1"
    }
  ]
}
```
