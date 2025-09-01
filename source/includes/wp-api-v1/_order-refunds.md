# Refunds #

The refunds API allows you to create, view, and delete individual refunds.

## Refund properties ##

|   Attribute    |    Type   |                                               Description                                                |
|----------------|-----------|----------------------------------------------------------------------------------------------------------|
| `id`           | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                            |
| `date_created` | date-time | The date the order refund was created, in the site's timezone. <i class="label label-info">read-only</i> |
| `amount`       | string    | Refund amount. <i class="label label-info">required</i>                                                  |
| `reason`       | string    | Reason for refund.                                                                                       |
| `line_items`   | array     | Line items data. See [Refunds Line Items properties](#refund-line-item-properties).                    |

### Refund line item properties ###

|   Attribute    |   Type  |                                          Description                                           |
|----------------|---------|------------------------------------------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                             |
| `name`         | string  | Product name. <i class="label label-info">read-only</i>                                        |
| `sku`          | string  | Product SKU. <i class="label label-info">read-only</i>                                         |
| `product_id`   | integer | Product ID.                                                                                    |
| `variation_id` | integer | Variation ID, if applicable.                                                                   |
| `quantity`     | integer | Quantity ordered.                                                                              |
| `tax_class`    | string  | Tax class of product. <i class="label label-info">read-only</i>                                |
| `price`        | string  | Product price. <i class="label label-info">read-only</i>                                       |
| `subtotal`     | string  | Line subtotal (before discounts).                                                              |
| `subtotal_tax` | string  | Line subtotal tax (before discounts).                                                          |
| `total`        | string  | Line total (after discounts).                                                                  |
| `total_tax`    | string  | Line total tax (after discounts).                                                              |
| `taxes`        | array   | Line total tax with `id`, `total` and `subtotal`. <i class="label label-info">read-only</i>    |
| `meta`         | array   | Line item meta data with `key`, `label` and `value`. <i class="label label-info">read-only</i> |

## Create a refund ##

This API helps you to create a new refund for an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/orders/116/refunds \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "amount": "10"
}'
```

```javascript
const data = {
  amount: "10"
};

WooCommerce.post("orders/116/refunds", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php
$data = [
    'amount' => '10'
];

print_r($woocommerce->post('orders/116/refunds', $data));
?>
```

```python
data = {
    "amount": "10"
}

print(wcapi.post("orders/116/refunds", data).json())
```

```ruby
data = {
  amount: "10"
}

woocommerce.post("orders/116/refunds", data).parsed_response
```

> JSON response example:

```json
{
  "id": 150,
  "date_created": "2016-05-30T17:28:05",
  "amount": "10.00",
  "reason": "",
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds/150"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116"
      }
    ]
  }
}
```

## Retrieve a refund ##

This API lets you retrieve and view a specific refund from an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders/116/refunds/150 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/116/refunds/150")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/116/refunds/150')); ?>
```

```python
print(wcapi.get("orders/116/refunds/150").json())
```

```ruby
woocommerce.get("orders/116/refunds/150").parsed_response
```

> JSON response example:

```json
{
  "id": 150,
  "date_created": "2016-05-30T17:28:05",
  "amount": "10.00",
  "reason": "",
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds/150"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                    Description                    |
|-----------|--------|---------------------------------------------------|
| `dp`      | string | Number of decimal points to use in each resource. |

## List all refunds ##

This API helps you to view all the refunds from an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders/116/refunds \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/116/refunds")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/116/refunds')); ?>
```

```python
print(wcapi.get("orders/116/refunds").json())
```

```ruby
woocommerce.get("orders/116/refunds").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 151,
    "date_created": "2016-05-30T17:31:48",
    "amount": "2.00",
    "reason": "",
    "line_items": [
      {
        "id": 11,
        "name": "Woo Single #2",
        "sku": "12345",
        "product_id": 99,
        "variation_id": 0,
        "quantity": -1,
        "tax_class": "",
        "price": "-2.00",
        "subtotal": "-2.00",
        "subtotal_tax": "0.00",
        "total": "-2.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta": []
      }
    ],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116/refunds/151"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116/refunds"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116"
        }
      ]
    }
  },
  {
    "id": 150,
    "date_created": "2016-05-30T17:28:05",
    "amount": "10.00",
    "reason": "",
    "line_items": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116/refunds/150"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116/refunds"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter       |   Type  |                                                  Description                                                  |
|-----------------|---------|---------------------------------------------------------------------------------------------------------------|
| `context`       | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.     |
| `page`          | integer | Current page of the collection.                                                                               |
| `per_page`      | integer | Maximum number of items to be returned in result set.                                                         |
| `search`        | string  | Limit results to those matching a string.                                                                     |
| `after`         | string  | Limit response to resources published after a given ISO8601 compliant date.                                   |
| `before`        | string  | Limit response to resources published before a given ISO8601 compliant date.                                  |
| `dates_are_gmt` | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                      |
| `exclude`       | string  | Ensure result set excludes specific ids.                                                                      |
| `include`       | string  | Limit result set to specific ids.                                                                             |
| `offset`        | integer | Offset the result set by a specific number of items.                                                          |
| `order`         | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                    |
| `orderby`       | string  | Sort collection by object attribute. Default is `date`, Options: `date`, `id`, `include`, `title` and `slug`. |
| `dp`            | string  | Number of decimal points to use in each resource.                                                             |

## Delete a refund ##

This API helps you delete an order refund.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/orders/116/refunds/150?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("orders/116/refunds/150", {
  force: true
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->delete('orders/116/refunds/150', ['force' => true])); ?>
```

```python
print(wcapi.delete("orders/116/refunds/150", params={"force": True}).json())
```

```ruby
woocommerce.delete("orders/116/refunds/150", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 150,
  "date_created": "2016-05-30T17:28:05",
  "amount": "10.00",
  "reason": "",
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds/150"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/116"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |
