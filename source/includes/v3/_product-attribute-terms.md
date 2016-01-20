# Product - Attribute Terms #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate product attribute terms.

## Product Attribute Properties ##

| Attribute |   Type  |                                      Description                                      |
| --------- | ------- | ------------------------------------------------------------------------------------- |
| `id`      | integer | Term ID (term ID) <i class="label label-info">read-only</i>                           |
| `name`    | string  | Term name <i class="label label-info">required</i>                                    |
| `slug`    | string  | Term slug                                                                             |
| `count`   | integer | Shows the quantity of products in this term <i class="label label-info">read-only</i> |

## Create a Product Attribute Term ##

This API helps you to create a new product attribute term.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/products/attributes/&lt;attribute_id&gt;/terms</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/products/attributes/1/terms \
    -u consumer_key:consumer_secret \
    -H "Content-Type: application/json" \
    -d '{
  "product_attribute_term": {
    "name": "Black"
  }
}'
```

```javascript
var data = {
  product_attribute_term: {
    name: 'Black'
  }
};

WooCommerce.post('products/attributes/1/terms', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_attribute_term' => [
        'name' => 'Black'
    ]
];

print_r($woocommerce->post('products/attributes/1/terms', $data));
?>
```

```python
data = {
    "product_attribute_term": {
        "name": "Black"
    }
}

print(wcapi.post("products/attributes/1/terms", data).json())
```

```ruby
data = {
  product_attribute_term: {
    name: "Black"
  }
}

woocommerce.post("products/attributes/1/terms", data).parsed_response
```

> JSON response example:

```json
{
  "product_attribute_term": {
    "id": 18,
    "name": "Black",
    "slug": "black",
    "count": 0
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View a Product Attribute Term ##

This API lets you retrieve a product attribute term by ID.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/attributes/&lt;attribute_id&gt;/terms/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/attributes/1/terms/18 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/attributes/1/terms/18', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/attributes/1/terms/18')); ?>
```

```python
print(wcapi.get("products/attributes/1/terms/18").json())
```

```ruby
woocommerce.get("products/attributes/1/terms/18").parsed_response
```

> JSON response example:

```json
{
  "product_attribute_term": {
    "id": 18,
    "name": "Black",
    "slug": "black",
    "count": 5
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View List of Product Attribute Terms ##

This API lets you retrieve all terms from a product attribute.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/attributes/&lt;attribute_id&gt;/terms</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/attributes/1/terms \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/attributes/1/terms', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/attributes/1/terms')); ?>
```

```python
print(wcapi.get("products/attributes/1/terms").json())
```

```ruby
woocommerce.get("products/attributes/1/terms").parsed_response
```

> JSON response example:

```json
{
  "product_attribute_terms": [
    {
      "id": 18,
      "slug": "black",
      "name": "Black",
      "count": 5
    },
    {
      "id": 20,
      "slug": "blue",
      "name": "Blue",
      "count": 4
    },
    {
      "id": 19,
      "slug": "green",
      "name": "Green",
      "count": 4
    },
    {
      "id": 24,
      "slug": "pink",
      "name": "Pink",
      "count": 3
    },
    {
      "id": 22,
      "slug": "red",
      "name": "Red",
      "count": 3
    },
    {
      "id": 21,
      "slug": "white",
      "name": "White",
      "count": 3
    },
    {
      "id": 23,
      "slug": "yellow",
      "name": "Yellow",
      "count": 3
    }
  ]
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Update a Product Attribute Term ##

This API lets you make changes to a product attribute term.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/products/attributes/&lt;attribute_id&gt;/terms/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/products/attributes/1/terms/18 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product_attribute_term": {
    "name": "BLACK"
  }
}'
```

```javascript
var data = {
  product_attribute_term: {
    name: 'BLACK'
  }
};

WooCommerce.put('products/attributes/1/terms/18', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_attribute_term' => [
        'name' => 'BLACK'
    ]
];

print_r($woocommerce->put('products/attributes/1/terms/18', $data));
?>
```

```python
data = {
    "product_attribute_term": {
        "name": "BLACK"
    }
}

print(wcapi.put("products/attributes/1/terms/18", data).json())
```

```ruby
data = {
  product_attribute_term: {
    name: "BLACK"
  }
}

woocommerce.put("products/attributes/1/terms/18", data).parsed_response
```

> JSON response example:

```json
{
  "product_attribute_term": {
    "id": 18,
    "name": "BLACK",
    "slug": "black",
    "count": 5
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Delete a Product Attribute Term ##

This API helps you delete a product attribute term.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/products/attributes/&lt;attribute_id&gt;/terms/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/products/attributes/1/terms/18 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/attributes/1/terms/18', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/attributes/1/terms/18')); ?>
```

```python
print(wcapi.delete("products/attributes/1/terms/18").json())
```

```ruby
woocommerce.delete("products/attributes/1/terms/18").parsed_response
```

> JSON response example:

```json
{
  "message": "Deleted product_attribute_term"
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>
