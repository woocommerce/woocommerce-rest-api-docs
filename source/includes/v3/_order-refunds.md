# Order - Refunds #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate order refunds.

## Order Refunds Properties ##

|  Attribute   |   Type  |                                       Description                                        |
|--------------|---------|------------------------------------------------------------------------------------------|
| `id`         | integer | Order note ID <i class="label label-info">read-only</i>                                  |
| `created_at` | string  | UTC DateTime when the order refund was created <i class="label label-info">read-only</i> |
| `amount`     | string  | Refund amount <i class="label label-info">required</i>                                   |
| `reason`     | string  | Reason for refund                                                                        |
| `line_items` | array   | List of order items to refund. See [Line Items Properties](#line-items-properties)       |

## Create a Refund For an Order ##

This API helps you to create a new refund for an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/orders/645/refunds \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "order_refund": {
    "amount": 10
  }
}'
```

```javascript
var data = {
  order_refund: {
    amount: 10
  }
};

WooCommerce.post('orders/645/refunds', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'order_refund' => [
        'amount' => 10
    ]
];

print_r($woocommerce->post('orders/645/refunds', $data));
?>
```

```python
data = {
    "order_refund": {
        "amount": 10
    }
}

print(wcapi.post("orders/645/refunds", data).json())
```

```ruby
data = {
  order_refund: {
    amount: 10
  }
}

woocommerce.post("orders/645/refunds", data).parsed_response
```

> JSON response example:

```json
{
  "order_refund": {
    "id": 649,
    "created_at": "2015-01-26T19:29:32Z",
    "amount": "10.00",
    "reason": "",
    "line_items": []
  }
}
```

## View an Order Refund ##

This API lets you retrieve and view a specific refund from an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/orders/645/refunds/649 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('orders/645/refunds/649', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('orders/645/refunds/649')); ?>
```

```python
print(wcapi.get("orders/645/refunds/649").json())
```

```ruby
woocommerce.get("orders/645/refunds/649").parsed_response
```

> JSON response example:

```json
{
  "order_refund": {
    "id": 649,
    "created_at": "2015-01-26T19:29:32Z",
    "amount": "10.00",
    "reason": "",
    "line_items": []
  }
}
```

## View List of Refunds From an Order ##

This API helps you to view all the refunds from an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/refunds</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/orders/645/refunds \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('orders/645/refunds', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('orders/645/refunds')); ?>
```

```python
print(wcapi.get("orders/645/refunds").json())
```

```ruby
woocommerce.get("orders/645/refunds").parsed_response
```

> JSON response example:

```json
{
  "order_refunds": [
    {
      "id": 649,
      "created_at": "2015-01-26T19:29:32Z",
      "amount": "10.00",
      "reason": "",
      "line_items": []
    },
    {
      "id": 647,
      "created_at": "2015-01-26T19:19:06Z",
      "amount": "21.99",
      "reason": "",
      "line_items": [
        {
          "id": 514,
          "subtotal": "-21.99",
          "subtotal_tax": "0.00",
          "total": "-21.99",
          "total_tax": "0.00",
          "price": "-21.99",
          "quantity": 1,
          "tax_class": "reduced-rate",
          "name": "Premium Quality",
          "product_id": 546,
          "sku": "",
          "meta": []
        },
        {
          "id": 515,
          "subtotal": "0.00",
          "subtotal_tax": "0.00",
          "total": "0.00",
          "total_tax": "0.00",
          "price": "0.00",
          "quantity": 0,
          "tax_class": null,
          "name": "Ship Your Idea",
          "product_id": 613,
          "sku": "",
          "meta": []
        }
      ]
    }
  ]
}
```

## Update an Order Refund ##

This API lets you make changes to an order refund.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/orders/645/refunds/649 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "order_refund": {
    "reason": "Because was it necessary!"
  }
}'
```

```javascript
var data = {
  order_refund: {
    reason: 'Because was it necessary!'
  }
};

WooCommerce.put('orders/645/refunds/649', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'order_refund' => [
        'reason' => 'Because was it necessary!'
    ]
];

print_r($woocommerce->put('orders/645/refunds/649', $data));
?>
```

```python
data = {
    "order_refund": {
        "reason": "Because was it necessary!"
    }
}

print(wcapi.put("orders/645/refunds/649", data).json())
```

```ruby
data = {
  order_refund: {
    reason: "Because was it necessary!"
  }
}

woocommerce.put("orders/645/refunds/649", data).parsed_response
```

> JSON response example:

```json
{
  "order_refund": {
    "id": 649,
    "created_at": "2015-01-26T19:29:32Z",
    "amount": "10.00",
    "reason": "Because was it necessary!",
    "line_items": []
  }
}
```

## Delete an Order Refund ##

This API helps you delete an order refund.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/refunds/&lt;refund_id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/orders/645/refunds/649 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('orders/645/refunds/649', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('orders/645/refunds/649')); ?>
```

```python
print(wcapi.delete("orders/645/refunds/649").json())
```

```ruby
woocommerce.delete("orders/645/refunds/649").parsed_response
```

> JSON response example:

```json
{
  "message": "Permanently deleted refund"
}
```
