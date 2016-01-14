# Order - Notes #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate order notes.

## Order Notes Properties ##

|    Attribute    |   Type  |                                                    Description                                                     |
| --------------- | ------- | ------------------------------------------------------------------------------------------------------------------ |
| `id`            | integer | Order note ID <i class="label label-info">read-only</i>                                                            |
| `created_at`    | string  | UTC DateTime when the order note was created <i class="label label-info">read-only</i>                             |
| `note`          | string  | Order note <i class="label label-info">required</i>                                                                |
| `customer_note` | boolean | Shows/define if the note is only for reference or for the customer (the user will be notified). Default is `false` |

## Create a Note For an Order ##

This API helps you to create a new note for an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/notes</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/orders/645/notes \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "order_note": {
    "note": "Order ok!!!"
  }
}'
```

```javascript
var data = {
  order_note: {
    note: 'Order ok!!!'
  }
};

WooCommerce.post('orders/645/notes', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'order_note' => [
        'note' => 'Order ok!!!'
    ]
];

print_r($woocommerce->post('orders/645/notes', $data));
?>
```

```python
data = {
    "order_note": {
        "note": "Order ok!!!"
    }
}

print(wcapi.post("orders/645/notes", data).json())
```

```ruby
data = {
  order_note: {
    note: "Order ok!!!"
  }
}

woocommerce.post("orders/645/notes", data).parsed_response
```

> JSON response example:

```json
{
  "order_note": {
    "id": "416",
    "created_at": "2015-01-26T20:56:44Z",
    "note": "Order ok!!!",
    "customer_note": false
  }
}
```

## View an Order Note ##

This API lets you retrieve and view a specific note from an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/notes/&lt;note_id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/orders/645/notes/416 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('orders/645/notes/416', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('orders/645/notes/416')); ?>
```

```python
print(wcapi.get("orders/645/notes/416").json())
```

```ruby
woocommerce.get("orders/645/notes/416").parsed_response
```

> JSON response example:

```json
{
  "order_note": {
    "id": "416",
    "created_at": "2015-01-26T20:56:44Z",
    "note": "Order ok!!!",
    "customer_note": false
  }
}
```

## View List of Notes From an Order ##

This API helps you to view all the notes from an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/notes</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/orders/645/notes \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('orders/645/notes', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('orders/645/notes')); ?>
```

```python
print(wcapi.get("orders/645/notes").json())
```

```ruby
woocommerce.get("orders/645/notes").parsed_response
```

> JSON response example:

```json
{
  "order_notes": [
    {
      "id": "416",
      "created_at": "2015-01-26T20:56:44Z",
      "note": "Order ok!!!",
      "customer_note": false
    },
    {
      "id": "415",
      "created_at": "2015-01-26T20:16:14Z",
      "note": "Order status changed from Processing to Completed.",
      "customer_note": false
    },
    {
      "id": "412",
      "created_at": "2015-01-26T20:00:21Z",
      "note": "Order item stock reduced successfully.",
      "customer_note": false
    },
    {
      "id": "411",
      "created_at": "2015-01-26T20:00:09Z",
      "note": "Order status changed from Pending Payment to Processing.",
      "customer_note": false
    }
  ]
}
```

## Update an Order Note ##

This API lets you make changes to an order note.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/notes/&lt;note_id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/orders/645/notes/416 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "order_note": {
    "note": "Ok!"
  }
}'
```

```javascript
var data = {
  order_note: {
    note: 'Ok!'
  }
};

WooCommerce.put('orders/645/notes/416', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'order_note' => [
        'note' => 'Ok!'
    ]
];

print_r($woocommerce->put('orders/645/notes/416', $data));
?>
```

```python
data = {
    "order_note": {
        "note": "Ok!"
    }
}

print(wcapi.put("orders/645/notes/416", data).json())
```

```ruby
data = {
  order_note: {
    note: "Ok!"
  }
}

woocommerce.put("orders/645/notes/416", data).parsed_response
```

> JSON response example:

```json
{
  "order_note": {
    "id": "416",
    "created_at": "2015-01-26T20:56:44Z",
    "note": "Ok!",
    "customer_note": false
  }
}
```

## Delete an Order Note ##

This API helps you delete an order note.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/orders/&lt;id&gt;/notes/&lt;note_id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/orders/645/notes/416 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('orders/645/notes/416', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('orders/645/notes/416')); ?>
```

```python
print(wcapi.delete("orders/645/notes/416").json())
```

```ruby
woocommerce.delete("orders/645/notes/416").parsed_response
```

> JSON response example:

```json
{
  "message": "Permanently deleted order note"
}
```
