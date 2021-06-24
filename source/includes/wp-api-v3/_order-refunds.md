# Refunds #

The refunds API allows you to create, view, and delete individual refunds.

## Order refund properties ##

| Attribute          | Type      | Description                                                                                                                                      |
|--------------------|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`               | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                    |
| `date_created`     | date-time | The date the order refund was created, in the site's timezone. <i class="label label-info">read-only</i>                                         |
| `date_created_gmt` | date-time | The date the order refund was created, as GMT. <i class="label label-info">read-only</i>                                                         |
| `amount`           | string    | Total refund amount. Optional. If this parameter is provided, it will take precedence over line item totals, even when total of line items does not matches with this amount. |
| `reason`           | string    | Reason for refund.                                                                                                                               |
| `refunded_by`      | integer   | User ID of user who created the refund.                                                                                                          |
| `refunded_payment` | boolean   | If the payment was refunded via the API. See `api_refund`. <i class="label label-info">read-only</i>                                             |
| `meta_data`        | array     | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                                         |
| `line_items`       | array     | Line items data. See [Order refund - Line items properties](#order-refund-line-items-properties)                                                 |
| `api_refund`       | boolean   | When true, the payment gateway API is used to generate the refund. Default is `true`. <i class="label label-info">write-only</i>                 |
| `api_restock`      | boolean   | When true, items are restocked. Default is `true`. <i class="label label-info">write-only</i>                                                    |

### Order refund - Meta data properties ###

| Attribute | Type    | Description                                        |
|-----------|---------|----------------------------------------------------|
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

### Order refund - Line items properties ###

| Attribute      | Type    | Description                                                                                                                                     |
|----------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                                                                              |
| `name`         | string  | Product name.                                                                                                                                   |
| `product_id`   | integer | Product ID.                                                                                                                                     |
| `variation_id` | integer | Variation ID, if applicable.                                                                                                                    |
| `quantity`     | integer | Quantity ordered.                                                                                                                               |
| `tax_class`    | integer | Tax class of product.                                                                                                                           |
| `subtotal`     | string  | Line subtotal (before discounts).                                                                                                               |
| `subtotal_tax` | string  | Line subtotal tax (before discounts). <i class="label label-info">read-only</i>                                                                 |
| `total`        | string  | Line total (after discounts).                                                                                                                   |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                                                     |
| `taxes`        | array   | Line taxes. See [Order refund line item - Taxes properties](#order-refund-line-item-taxes-properties) <i class="label label-info">read-only</i> |
| `meta_data`    | array   | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                                        |
| `sku`          | string  | Product SKU. <i class="label label-info">read-only</i>                                                                                          |
| `price`        | string  | Product price. <i class="label label-info">read-only</i>                                                                                        |
| `refund_total` | number  | The amount to refund for this line item, excluding taxes. <i class="label label-info">write-only</i>                                            |

#### Order refund line item - Taxes properties ####

| Attribute      | Type    | Description                                                                    |
|----------------|---------|--------------------------------------------------------------------------------|
| `id`           | integer | Tax rate ID. <i class="label label-info">read-only</i>                         |
| `total`        | string  | Tax total. <i class="label label-info">read-only</i>                           |
| `subtotal`     | string  | Tax subtotal. <i class="label label-info">read-only</i>                        |
| `refund_total` | number  | The amount to refund for this tax. <i class="label label-info">write-only</i>  |

## Create a refund ##

This API helps you to create a new refund for an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v3/orders/723/refunds \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "amount": "30",  
  "line_items": [
    {
      "id": "111",
      "refund_total": 10,
      "refund_tax": [
        {
          "id" "222",
          "refund_total": 20
        }
      ]
    }
}'
```

```javascript
const data = {
    amount: "30",
    line_items: [
      {
         id: "111",
         refund_total: 10,
         refund_tax: [
           {
             id: "222",
             refund_total: 20
           }
         ]
      }
   ]
};

WooCommerce.post("orders/723/refunds", data)
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
     'amount' => '30',
     'line_items' => [
       [
           'id' => '111',
           'refund_total' => 10,
           'refund_tax' => [
              [
                 'id' => '222',
                 'amount' => 20
              ]
           ]
       ]
     ]
];

print_r($woocommerce->post('orders/723/refunds', $data));
?>
```

```python
data = {
    "amount": "30",
    "line_items": [
      {
         "id": "111",
         "refund_total": 10,
         "refund_tax": [
           {
             "id" "222",
             "refund_total": 20
           }
         ]
      }
   ]
}

print(wcapi.post("orders/723/refunds", data).json())
```

```ruby
data = {
  amount: "30",
  line_items: [
    {
       id: "111",
       refund_total: 10,
       refund_tax: [
         {
           id "222",
           refund_total: 20
         }
       ]
    }
 ]
}

woocommerce.post("orders/723/refunds", data).parsed_response
```

> JSON response example:

```json
{
  "id": 726,
  "date_created": "2017-03-21T17:07:11",
  "date_created_gmt": "2017-03-21T20:07:11",
  "amount": "10.00",
  "reason": "",
  "refunded_by": 1,
  "refunded_payment": false,
  "meta_data": [],
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds/726"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723"
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
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/orders/723/refunds/726 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/723/refunds/726")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/723/refunds/726')); ?>
```

```python
print(wcapi.get("orders/723/refunds/726").json())
```

```ruby
woocommerce.get("orders/723/refunds/726").parsed_response
```

> JSON response example:

```json
{
  "id": 726,
  "date_created": "2017-03-21T17:07:11",
  "date_created_gmt": "2017-03-21T20:07:11",
  "amount": "10.00",
  "reason": "",
  "refunded_by": 1,
  "refunded_payment": false,
  "meta_data": [],
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds/726"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter | Type   | Description                                       |
|-----------|--------|---------------------------------------------------|
| `dp`      | string | Number of decimal points to use in each resource. |

## List all refunds ##

This API helps you to view all the refunds from an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/orders/723/refunds \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/723/refunds")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/723/refunds')); ?>
```

```python
print(wcapi.get("orders/723/refunds").json())
```

```ruby
woocommerce.get("orders/723/refunds").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 726,
    "date_created": "2017-03-21T17:07:11",
    "date_created_gmt": "2017-03-21T20:07:11",
    "amount": "10.00",
    "reason": "",
    "refunded_by": 1,
    "refunded_payment": false,
    "meta_data": [],
    "line_items": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723/refunds/726"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723/refunds"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723"
        }
      ]
    }
  },
  {
    "id": 724,
    "date_created": "2017-03-21T16:55:37",
    "date_created_gmt": "2017-03-21T19:55:37",
    "amount": "9.00",
    "reason": "",
    "refunded_by": 1,
    "refunded_payment": false,
    "meta_data": [],
    "line_items": [
      {
        "id": 314,
        "name": "Woo Album #2",
        "product_id": 87,
        "variation_id": 0,
        "quantity": -1,
        "tax_class": "",
        "subtotal": "-9.00",
        "subtotal_tax": "0.00",
        "total": "-9.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta_data": [
          {
            "id": 2076,
            "key": "_refunded_item_id",
            "value": "311"
          }
        ],
        "sku": "",
        "price": -9
      }
    ],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723/refunds/724"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723/refunds"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v3/orders/723"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter        | Type    | Description                                                                                                                  |
|------------------|---------|------------------------------------------------------------------------------------------------------------------------------|
| `context`        | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`. |
| `page`           | integer | Current page of the collection. Default is `1`.                                                                              |
| `per_page`       | integer | Maximum number of items to be returned in result set. Default is `10`.                                                       |
| `search`         | string  | Limit results to those matching a string.                                                                                    |
| `after`          | string  | Limit response to resources published after a given ISO8601 compliant date.                                                  |
| `before`         | string  | Limit response to resources published before a given ISO8601 compliant date.                                                 |
| `exclude`        | array   | Ensure result set excludes specific IDs.                                                                                     |
| `include`        | array   | Limit result set to specific ids.                                                                                            |
| `offset`         | integer | Offset the result set by a specific number of items.                                                                         |
| `order`          | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                  |
| `orderby`        | string  | Sort collection by object attribute. Options: `date`, `id`, `include`, `title` and `slug`. Default is `date`.                |
| `parent`         | array   | Limit result set to those of particular parent IDs.                                                                          |
| `parent_exclude` | array   | Limit result set to all items except those of a particular parent ID.                                                        |
| `dp`             | integer | Number of decimal points to use in each resource. Default is `2`.                                                            |

## Delete a refund ##

This API helps you delete an order refund.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v3/orders/723/refunds/726?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("orders/723/refunds/726", {
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
<?php print_r($woocommerce->delete('orders/723/refunds/726', ['force' => true])); ?>
```

```python
print(wcapi.delete("orders/723/refunds/726", params={"force": True}).json())
```

```ruby
woocommerce.delete("orders/723/refunds/726", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 726,
  "date_created": "2017-03-21T17:07:11",
  "date_created_gmt": "2017-03-21T20:07:11",
  "amount": "10.00",
  "reason": "",
  "refunded_by": 1,
  "refunded_payment": false,
  "meta_data": [],
  "line_items": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds/726"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723/refunds"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v3/orders/723"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter | Type   | Description                                                   |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |
