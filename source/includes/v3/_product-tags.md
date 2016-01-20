# Product - Tags #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate product tags.

## Product Tag Properties ##

|   Attribute   |   Type  |                                     Description                                      |
| ------------- | ------- | ------------------------------------------------------------------------------------ |
| `id`          | integer | Tag ID (term ID) <i class="label label-info">read-only</i>                           |
| `name`        | string  | Tag name <i class="label label-info">required</i>                                    |
| `slug`        | string  | Tag slug                                                                             |
| `description` | string  | Tag description                                                                      |
| `count`       | integer | Shows the quantity of products in this tag <i class="label label-info">read-only</i> |

## Create a Product Tag ##

This API helps you to create a new product tag.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/products/tags</h6>
	</div>
</div>

> Example of how to create a product tag:

```shell
curl -X POST https://example.com/wc-api/v3/products/tags \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product_tag": {
    "name": "Leather Shoes"
  }
}'
```

```javascript
var data = {
  product_tag: {
    name: 'Leather Shoes'
  }
};

WooCommerce.post('products/tags', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_tag': [
        'name': 'Leather Shoes'
    ]
];

print_r($woocommerce->post('products/tags', $data));
?>
```

```python
data = {
    "product_tag": {
        "name": "Leather Shoes"
    }
}

print(wcapi.post("products/tags", data).json())
```

```ruby
data = {
  product_tag: {
    name: "Leather Shoes"
  }
}

woocommerce.post("products/tags", data).parsed_response
```

> JSON response example:

```json
{
  "product_tag": {
    "id": 37,
    "name": "Leather Shoes",
    "slug": "leather-shoes",
    "description": "",
    "count": 0
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View a Product Tag ##

This API lets you retrieve a product tag by ID.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/tags/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/tags/37 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/tags/37', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/tags/37')); ?>
```

```python
print(wcapi.get("products/tags/37").json())
```

```ruby
woocommerce.get("products/tags/37").parsed_response
```

> JSON response example:

```json
{
  "product_tag": {
    "id": 37,
    "name": "Leather Shoes",
    "slug": "leather-shoes",
    "description": "",
    "count": 0
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View List of Product Tags ##

This API lets you retrieve all product tag.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/tags</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/tags \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/tags', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/tags')); ?>
```

```python
print(wcapi.get("products/tags").json())
```

```ruby
woocommerce.get("products/tags").parsed_response
```

> JSON response example:

```json
{
  "product_tags": [
    {
      "id": 37,
      "name": "Leather Shoes",
      "slug": "leather-shoes",
      "description": "",
      "count": 0
    },
    {
      "id": 38,
      "name": "Oxford Shoes",
      "slug": "oxford-shoes",
      "description": "",
      "count": 0
    }
  ]
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Update a Product Tag ##

This API lets you make changes to a product tag.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/products/tags/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/products/tags/37 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product_tag": {
    "description": "Genuine leather."
  }
}'
```

```javascript
var data = {
  product_tag: {
    description: 'Genuine leather.'
  }
};

WooCommerce.put('products/tags/37', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_tag': [
        'description': 'Genuine leather.'
    ]
];

print_r($woocommerce->put('products/tags/37', $data));
?>
```

```python
data = {
    "product_tag": {
        "description": "Genuine leather."
    }
}

print(wcapi.put("products/tags/37", data).json())
```

```ruby
data = {
  product_tag: {
    description: "Genuine leather."
  }
}

woocommerce.put("products/tags/37", data).parsed_response
```

> JSON response example:

```json
{
  "product_tag": {
    "id": 37,
    "name": "Leather Shoes",
    "slug": "leather-shoes",
    "description": "Genuine leather.",
    "count": 0
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Delete a Product Tag ##

This API helps you delete a product tag.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/products/tag/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/products/tag/37 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/tag/37', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/tags/37')); ?>
```

```python
print(wcapi.delete("products/tag/37").json())
```

```ruby
woocommerce.delete("products/tag/37").parsed_response
```

> JSON response example:

```json
{
  "message": "Deleted product_tag"
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>
