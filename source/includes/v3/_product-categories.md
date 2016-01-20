# Product - Categories #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate product categories.

## Product Category Properties ##

|   Attribute   |   Type  |                                                  Description                                                  |
| ------------- | ------- | ------------------------------------------------------------------------------------------------------------- |
| `id`          | integer | Category ID (term ID) <i class="label label-info">read-only</i>                                               |
| `name`        | string  | Category name <i class="label label-info">required</i>                                                        |
| `slug`        | string  | Category slug                                                                                                 |
| `parent`      | integer | Category parent                                                                                               |
| `description` | string  | Category description                                                                                          |
| `display`     | string  | Category archive display type, the types available include: `default`, `products`, `subcategories` and `both` |
| `image`       | string  | Category image URL                                                                                            |
| `count`       | integer | Shows the quantity of products in this category <i class="label label-info">read-only</i>                     |

## Create a Product Category ##

This API helps you to create a new product category.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/products/categories</h6>
	</div>
</div>

> Example of how to create a product category:

```shell
curl -X POST https://example.com/wc-api/v3/products/categories \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product_category": {
    "name": "Clothing"
  }
}'
```

```javascript
var data = {
  product_category: {
    name: 'Clothing'
  }
};

WooCommerce.post('products/categories', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_category' => [
        'name' => 'Clothing'
    ]
];

print_r($woocommerce->post('products/categories', $data));
?>
```

```python
data = {
    "product_category": {
        "name": "Clothing"
    }
}

print(wcapi.post("products/categories", data).json())
```

```ruby
data = {
  product_category: {
    name: "Clothing"
  }
}

woocommerce.post("products/categories", data).parsed_response
```

> JSON response example:

```json
{
  "product_category": {
    "id": 9,
    "name": "Clothing",
    "slug": "clothing",
    "parent": 0,
    "description": "",
    "display": "default",
    "image": "",
    "count": 0
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View a Product Category ##

This API lets you retrieve a product category by ID.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/categories/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/categories/9 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/categories/9', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/categories/9')); ?>
```

```python
print(wcapi.get("products/categories/9").json())
```

```ruby
woocommerce.get("products/categories/9").parsed_response
```

> JSON response example:

```json
{
  "product_category": {
    "id": 9,
    "name": "Clothing",
    "slug": "clothing",
    "parent": 0,
    "description": "",
    "display": "default",
    "image": "",
    "count": 23
  }
}
```

## View List of Product Categories ##

This API lets you retrieve all product categories.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/categories</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/categories \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/categories', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/categories')); ?>
```

```python
print(wcapi.get("products/categories").json())
```

```ruby
woocommerce.get("products/categories").parsed_response
```

> JSON response example:

```json
{
  "product_categories": [
    {
      "id": 15,
      "name": "Albums",
      "slug": "albums",
      "parent": 11,
      "description": "",
      "display": "default",
      "image": "",
      "count": 4
    },
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing",
      "parent": 0,
      "description": "",
      "display": "default",
      "image": "",
      "count": 23
    },
    {
      "id": 10,
      "name": "Hoodies",
      "slug": "hoodies",
      "parent": 9,
      "description": "",
      "display": "default",
      "image": "",
      "count": 6
    },
    {
      "id": 11,
      "name": "Music",
      "slug": "music",
      "parent": 0,
      "description": "",
      "display": "default",
      "image": "",
      "count": 6
    },
    {
      "id": 12,
      "name": "Posters",
      "slug": "posters",
      "parent": 0,
      "description": "",
      "display": "default",
      "image": "",
      "count": 5
    },
    {
      "id": 13,
      "name": "Singles",
      "slug": "singles",
      "parent": 11,
      "description": "",
      "display": "default",
      "image": "",
      "count": 2
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts",
      "parent": 9,
      "description": "",
      "display": "default",
      "image": "",
      "count": 17
    }
  ]
}
```

## Update a Product Category ##

This API lets you make changes to a product category.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/products/categories/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/products/categories/9 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product_category": {
    "description": "All kinds of clothes."
  }
}'
```

```javascript
var data = {
  product_category: {
    description: 'All kinds of clothes.'
  }
};

WooCommerce.put('products/categories/9', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product_category' => [
        'description' => 'All kinds of clothes.'
    ]
];

print_r($woocommerce->put('products/categories/9', $data));
?>
```

```python
data = {
    "product_category": {
        "description": "All kinds of clothes."
    }
}

print(wcapi.put("products/categories/9", data).json())
```

```ruby
data = {
  product_category: {
    description: "All kinds of clothes."
  }
}

woocommerce.put("products/categories/9", data).parsed_response
```

> JSON response example:

```json
{
  "product_category": {
    "id": 9,
    "name": "Clothing",
    "slug": "clothing",
    "parent": 0,
    "description": "All kinds of clothes.",
    "display": "default",
    "image": "",
    "count": 23
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Delete a Product Category ##

This API helps you delete a product category.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/products/categories/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/products/categories/9 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/categories/9', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/categories/9')); ?>
```

```python
print(wcapi.delete("products/categories/9").json())
```

```ruby
woocommerce.delete("products/categories/9").parsed_response
```

> JSON response example:

```json
{
  "message": "Deleted product_category"
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>
