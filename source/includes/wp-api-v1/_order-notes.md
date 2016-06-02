# Order notes #

The order notes API allows you to create, view, and delete individual order notes.  
Order notes are added by administrators and programmatically to store data about an order, or order events.

## Order note properties ##

|    Attribute    |    Type   |                                                     Description                                                     |
|-----------------|-----------|---------------------------------------------------------------------------------------------------------------------|
| `id`            | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                       |
| `date_created`  | date-time | The date the order note was created, in the site's timezone. <i class="label label-info">read-only</i>              |
| `note`          | string    | Order note. <i class="label label-info">required</i>                                                                |
| `customer_note` | boolean   | Shows/define if the note is only for reference or for the customer (the user will be notified). Default is `false`. |

## Create an order note ##

This API helps you to create a new note for an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/notes</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/orders/645/notes \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "note": "Order ok!!!"
}'
```

```javascript
var data = {
  note: 'Order ok!!!'
};

WooCommerce.post('orders/645/notes', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'note' => 'Order ok!!!'
];

print_r($woocommerce->post('orders/645/notes', $data));
?>
```

```python
data = {
    "note": "Order ok!!!"
}

print(wcapi.post("orders/645/notes", data).json())
```

```ruby
data = {
  note: "Order ok!!!"
}

woocommerce.post("orders/645/notes", data).parsed_response
```

> JSON response example:

```json
{
  "id": 51,
  "date_created": "2016-05-13T20:51:55",
  "note": "Order ok!!!",
  "customer_note": false,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes/51"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118"
      }
    ]
  }
}
```

## Retrieve an order note ##

This API lets you retrieve and view a specific note from an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/notes/&lt;note_id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders/645/notes/51 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('orders/645/notes/51', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('orders/645/notes/51')); ?>
```

```python
print(wcapi.get("orders/645/notes/51").json())
```

```ruby
woocommerce.get("orders/645/notes/51").parsed_response
```

> JSON response example:

```json
{
  "id": 51,
  "date_created": "2016-05-13T20:51:55",
  "note": "Order ok!!!",
  "customer_note": false,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes/51"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118"
      }
    ]
  }
}
```

## List all order notes ##

This API helps you to view all the notes from an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/notes</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders/645/notes \
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
[
  {
    "id": 51,
    "date_created": "2016-05-13T20:51:55",
    "note": "Order ok!!!",
    "customer_note": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118/notes/51"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118/notes"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118"
        }
      ]
    }
  },
  {
    "id": 46,
    "date_created": "2016-05-03T18:10:43",
    "note": "Order status changed from Pending Payment to Processing.",
    "customer_note": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118/notes/46"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118/notes"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/118"
        }
      ]
    }
  }
]
```

## Delete an order note ##

This API helps you delete an order note.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;/notes/&lt;note_id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/orders/645/notes/51?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('orders/645/notes/51?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('orders/645/notes/51', ['force' => true])); ?>
```

```python
print(wcapi.delete("orders/645/notes/51?force=true").json())
```

```ruby
woocommerce.delete("orders/645/notes/51", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 51,
  "date_created": "2016-05-13T20:51:55",
  "note": "Order ok!!!",
  "customer_note": false,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes/51"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118/notes"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/118"
      }
    ]
  }
}
```
#### Available parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |
