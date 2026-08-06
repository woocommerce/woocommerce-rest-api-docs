# Order refunds #

The order refunds API allows you to create, view, and delete individual refunds, based on an existing order.

## Order refund properties ##

| Attribute          | Type      | Description                                                                                                                                                                   |
|--------------------|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`               | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                                 |
| `date_created`     | date-time | The date the order refund was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                      |
| `date_created_gmt` | date-time | The date the order refund was created, as GMT. <i class="label label-info">read-only</i>                                                                                      |
| `amount`           | string    | Total refund amount. Optional. If this parameter is provided, it will take precedence over line item totals, even when total of line items does not matches with this amount. |
| `reason`           | string    | Reason for refund.                                                                                                                                                            |
| `refunded_by`      | integer   | User ID of user who created the refund.                                                                                                                                       |
| `refunded_payment` | boolean   | If the payment was refunded via the API. See `api_refund`. <i class="label label-info">read-only</i>                                                                          |
| `meta_data`        | array     | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                                                                      |
| `line_items`       | array     | Line items data. See [Order refund - Line items properties](#order-refund-line-items-properties)                                                                              |
| `tax_lines`        | array     | Tax lines data. See [Order refund - Tax lines properties](#order-refund-tax-lines-properties) <i class="label label-info">read-only</i>                                       |
| `shipping_lines`   | array     | Shipping lines data. See [Order refund - Shipping lines properties](#order-refund-shipping-lines-properties)                                                                  |
| `fee_lines`        | array     | Fee lines data. See [Order refund - Fee lines properties](#order-refund-fee-lines-properties)                                                                                 |
| `api_refund`       | boolean   | When true, the payment gateway API is used to generate the refund. Default is `true`. <i class="label label-info">write-only</i>                                              |
| `api_restock`      | boolean   | When true, the selected line items are restocked Default is `true`. <i class="label label-info">write-only</i>                                                                |
| `compute_totals`   | boolean   | When true, the server computes all monetary values from the line items (`id`-keyed, with the preview endpoint's tax-inclusive `refund_total` semantics); `amount` may be omitted or supplied as an override that must cover the line total and fit the remaining refundable amount. Default is `false`. Available as of WooCommerce 11.1.0. <i class="label label-info">write-only</i> |

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
| `tax_class`    | string  | Tax class of product.                                                                                                                           |
| `subtotal`     | string  | Line subtotal (before discounts).                                                                                                               |
| `subtotal_tax` | string  | Line subtotal tax (before discounts). <i class="label label-info">read-only</i>                                                                 |
| `total`        | string  | Line total (after discounts).                                                                                                                   |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                                                     |
| `taxes`        | array   | Line taxes. See [Order refund line item - Taxes properties](#order-refund-line-item-taxes-properties) <i class="label label-info">read-only</i> |
| `meta_data`    | array   | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                                        |
| `sku`          | string  | Product SKU. <i class="label label-info">read-only</i>                                                                                          |
| `price`        | string  | Product price. <i class="label label-info">read-only</i>                                                                                        |

#### Order refund line item - Taxes properties ####

| Attribute      | Type    | Description                                                                    |
|----------------|---------|--------------------------------------------------------------------------------|
| `id`           | integer | Tax rate ID. <i class="label label-info">read-only</i>                         |
| `total`        | string  | Tax total. <i class="label label-info">read-only</i>                           |
| `subtotal`     | string  | Tax subtotal. <i class="label label-info">read-only</i>                        |

### Order refund - Tax lines properties ###

| Attribute            | Type    | Description                                                                              |
|----------------------|---------|------------------------------------------------------------------------------------------|
| `id`                 | integer | Item ID. <i class="label label-info">read-only</i>                                       |
| `rate_code`          | string  | Tax rate code. <i class="label label-info">read-only</i>                                 |
| `rate_id`            | integer | Tax rate ID. <i class="label label-info">read-only</i>                                   |
| `label`              | string  | Tax rate label. <i class="label label-info">read-only</i>                                |
| `compound`           | boolean | Whether or not this is a compound tax rate. <i class="label label-info">read-only</i>              |
| `tax_total`          | string  | Tax total (not including shipping taxes). <i class="label label-info">read-only</i>      |
| `shipping_tax_total` | string  | Shipping tax total. <i class="label label-info">read-only</i>                            |
| `meta_data`          | array   | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties) |

### Order refund - Shipping lines properties ###

| Attribute      | Type    | Description                                                                                                                         |
|----------------|---------|-------------------------------------------------------------------------------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                                                                  |
| `method_title` | string  | Shipping method name.                                                                                                               |
| `method_id`    | string  | Shipping method ID.                                                                                                                 |
| `total`        | string  | Line total (after discounts).                                                                                                       |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                                         |
| `taxes`        | array   | Line taxes. See [Order refund - Tax lines properties](#order-refund-tax-lines-properties) <i class="label label-info">read-only</i> |
| `meta_data`    | array   | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                            |

### Order refund - Fee lines properties ###

| Attribute    | Type    | Description                                                                                                                         |
|--------------|---------|-------------------------------------------------------------------------------------------------------------------------------------|
| `id`         | integer | Item ID. <i class="label label-info">read-only</i>                                                                                  |
| `name`       | string  | Fee name.                                                                                                                           |
| `tax_class`  | string  | Tax class of fee.                                                                                                                   |
| `tax_status` | string  | Tax status of fee. Options: `taxable` and `none`.                                                                                   |
| `total`      | string  | Line total (after discounts).                                                                                                       |
| `total_tax`  | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                                         |
| `taxes`      | array   | Line taxes. See [Order refund - Tax lines properties](#order-refund-tax-lines-properties) <i class="label label-info">read-only</i> |
| `meta_data`  | array   | Meta data. See [Order refund - Meta data properties](#order-refund-meta-data-properties)                                            |

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
          "id": "222",
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
             "id": "222",
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
           id: "222",
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

#### Line item parameters ####

| Parameter      | Type    | Description                                                                |
|----------------|---------|----------------------------------------------------------------------------|
| `id`           | integer | The ID of the line item in the order.                                      |
| `refund_total` | number  | The amount to refund for this line item, excluding taxes.                  |
| `refund_tax`   | array   | Refunds for tax rates. See [Refund tax parameters](#refund-tax-parameters) |

#### Refund tax parameters ####

| Parameter      | Type    | Description                                                    |
|----------------|---------|----------------------------------------------------------------|
| `id`           | integer | The ID of the tax rate.                                        |
| `refund_total` | number  | The amount of tax to refund for this line item. |

<aside class="warning">
Stores running WooCommerce below 11.1.0 silently drop the unknown <code>compute_totals</code> parameter and process the request with the classic behavior, where a quantity-only request creates a refund of <code>0.00</code> instead of the intended amount. Before sending computed-form requests, verify that the store supports the flag: send <code>OPTIONS /wp-json/wc/v3/orders/&lt;id&gt;/refunds</code> and check that <code>compute_totals</code> is listed in the endpoint arguments, or probe <code>POST /wp-json/wc/v3/orders/&lt;id&gt;/refunds/preview</code>, which returns <code>rest_no_route</code> with HTTP 404 on stores without support.
</aside>

## Preview a refund ##

This API computes the totals a refund would have without creating it. The server owns the tax, rounding, and currency-precision math, so clients do not have to replicate it. Available as of WooCommerce 11.1.0.

The request requires the same capability as creating a refund; API keys with read permissions receive a `401`.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/refunds/preview</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v3/orders/723/refunds/preview \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "line_items": [
    {
      "line_item_id": 111,
      "quantity": 2
    }
  ]
}'
```

```javascript
const data = {
  line_items: [
    {
      line_item_id: 111,
      quantity: 2
    }
  ]
};

WooCommerce.post("orders/723/refunds/preview", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

> JSON response example:

```json
{
  "breakdown": {
    "products": {
      "subtotal": "100.00",
      "tax": "10.00",
      "items": [
        {
          "id": 111,
          "name": "Woo Album",
          "product_id": 93,
          "quantity": 2,
          "subtotal": "100.00",
          "tax": "10.00",
          "total": "110.00"
        }
      ]
    },
    "shipping": {
      "subtotal": "0.00",
      "tax": "0.00",
      "items": []
    },
    "fees": {
      "subtotal": "0.00",
      "tax": "0.00",
      "items": []
    }
  },
  "subtotal": "100.00",
  "tax": "10.00",
  "total": "110.00",
  "max_refundable": "110.00"
}
```

### Request properties ###

| Attribute    | Type  | Description                                                                                     |
|--------------|-------|-------------------------------------------------------------------------------------------------|
| `line_items` | array | Line items to preview. Required, at least one entry. See properties below. Unknown keys are rejected. |

### Preview line item properties ###

| Attribute      | Type    | Description                                                                                                                                                                                                                              |
|----------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `line_item_id` | integer | ID of the original order line item (product, shipping, or fee line). <i class="label label-info">required</i>                                                                                                                            |
| `quantity`     | integer | Quantity to refund. Required when `refund_total` is omitted.                                                                                                                                                                             |
| `refund_total` | number  | Tax-inclusive amount to refund for this line. Overrides `quantity` when both are sent. Must be non-zero and match the line's sign: negative for discount or credit lines, positive otherwise. Note this differs from the create endpoint, where `refund_total` is a net amount with taxes supplied separately via `refund_tax`. |

### Response properties ###

| Attribute        | Type   | Description                                                                                          |
|------------------|--------|------------------------------------------------------------------------------------------------------|
| `breakdown`      | object | Per-section breakdown with `products`, `shipping`, and `fees`, each carrying `subtotal`, `tax`, and `items`. |
| `subtotal`       | string | Tax-exclusive total of the previewed refund.                                                         |
| `tax`            | string | Tax portion of the previewed refund.                                                                 |
| `total`          | string | Tax-inclusive total of the previewed refund.                                                         |
| `max_refundable` | string | The order's remaining refundable amount.                                                             |

### Errors ###

Validation failures return `400` or `422` with one of these codes: `woocommerce_rest_quantity_exceeds_refundable`, `woocommerce_rest_line_item_already_refunded`, `woocommerce_rest_order_not_refundable`, `woocommerce_rest_preview_exceeds_max_refundable`, `woocommerce_rest_refund_total_exceeds_line`, `woocommerce_rest_invalid_refund_amount`, `woocommerce_rest_invalid_refund_total`, `woocommerce_rest_duplicate_line_item`, `woocommerce_rest_line_item_not_found`, `woocommerce_rest_missing_quantity_or_refund_total`. An unknown order returns `404` `woocommerce_rest_invalid_order_id`.

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

Note: To view a list of refunds from your store, regardless of order, check out the [refunds endpoint](#refunds).

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
| `dates_are_gmt`  | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                     |
| `exclude`        | array   | Ensure result set excludes specific IDs.                                                                                     |
| `include`        | array   | Limit result set to specific ids.                                                                                            |
| `offset`         | integer | Offset the result set by a specific number of items.                                                                         |
| `order`          | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                  |
| `orderby`        | string  | Sort collection by object attribute. Options: `date`, `modified`, `id`, `include`, `title` and `slug`. Default is `date`.    |
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
