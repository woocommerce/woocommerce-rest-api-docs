# Product - Shipping Classes #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate product shipping classes.

## Product Shipping Class Properties ##

|   Attribute   |   Type  |                                       Description                                        |
|---------------|---------|------------------------------------------------------------------------------------------|
| `id`          | integer | Unique identifier for the resource. <i class="label label-info">read-only</i>            |
| `name`        | string  | Shipping class name. <i class="label label-info">required</i>                            |
| `slug`        | string  | An alphanumeric identifier for the resource unique to its type.                          |
| `description` | string  | HTML description of the resource.                                                        |
| `count`       | integer | Number of published products for the resource. <i class="label label-info">read-only</i> |

## Create a Product Shipping Class ##

This API helps you to create a new product shipping class.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/products/shipping_classes</h6>
	</div>
</div>

> Example of how to create a product shipping class:

```shell
curl -X POST https://example.com/wp-json/wc/v1/products/shipping_classes \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "name": "Priority"
}'
```

```javascript
var data = {
  name: 'Priority'
};

WooCommerce.post('products/shipping_classes', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'name' => 'Priority'
];

print_r($woocommerce->post('products/shipping_classes', $data));
?>
```

```python
data = {
    "name": "Priority"
}

print(wcapi.post("products/shipping_classes", data).json())
```

```ruby
data = {
  name: "Priority"
}

woocommerce.post("products/shipping_classes", data).parsed_response
```

> JSON response example:

```json
{
  "id": 32,
  "name": "Priority",
  "slug": "priority",
  "description": "",
  "count": 0,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/32"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
      }
    ]
  }
}
```

## View a Product Shipping Class ##

This API lets you retrieve a product shipping class by ID.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/products/shipping_classes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/shipping_classes/32 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/shipping_classes/32', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/shipping_classes/32')); ?>
```

```python
print(wcapi.get("products/shipping_classes/32").json())
```

```ruby
woocommerce.get("products/shipping_classes/32").parsed_response
```

> JSON response example:

```json
{
  "id": 32,
  "name": "Priority",
  "slug": "priority",
  "description": "",
  "count": 0,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/32"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
      }
    ]
  }
}
```

## View List of Product Shipping Classes ##

This API lets you retrieve all product shipping classes.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/products/shipping_classes</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/shipping_classes \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/shipping_classes', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/shipping_classes')); ?>
```

```python
print(wcapi.get("products/shipping_classes").json())
```

```ruby
woocommerce.get("products/shipping_classes").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 33,
    "name": "Express",
    "slug": "express",
    "description": "",
    "count": 0,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/33"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
        }
      ]
    }
  },
  {
    "id": 32,
    "name": "Priority",
    "slug": "priority",
    "description": "",
    "count": 0,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/32"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
        }
      ]
    }
  }
]
```

#### Available Parameters ####

|  Parameter   |   Type  |                                                                Description                                                                 |
|--------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------|
| `context`    | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.                                  |
| `page`       | integer | Current page of the collection.                                                                                                            |
| `per_page`   | integer | Maximum number of items to be returned in result set.                                                                                      |
| `search`     | string  | Limit results to those matching a string.                                                                                                  |
| `exclude`    | string  | Ensure result set excludes specific ids.                                                                                                   |
| `include`    | string  | Limit result set to specific ids.                                                                                                          |
| `order`      | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                                                 |
| `orderby`    | string  | Sort collection by object attribute. Default is `name`. Options: `id`, `include`, `name`, `slug`, `term_group`, `description` and `count`. |
| `hide_empty` | bool    | Whether to hide resources not assigned to any products. Default is `false`.                                                                |
| `product`    | integer | Limit result set to resources assigned to a specific product.                                                                              |
| `slug`       | string  | Limit result set to resources with a specific slug.                                                                                        |

## Update a Product Shipping Class ##

This API lets you make changes to a product shipping class.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v1/products/shipping_classes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v1/products/shipping_classes/32 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "description": "Priority mail."
}'
```

```javascript
var data = {
  description: 'Priority mail.'
};

WooCommerce.put('products/shipping_classes/32', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'description' => 'Priority mail.'
];

print_r($woocommerce->put('products/shipping_classes/32', $data));
?>
```

```python
data = {
    "description": "Priority mail."
}

print(wcapi.put("products/shipping_classes/32", data).json())
```

```ruby
data = {
  description: "Priority mail."
}

woocommerce.put("products/shipping_classes/32", data).parsed_response
```

> JSON response example:

```json
{
  "id": 32,
  "name": "Priority",
  "slug": "priority",
  "description": "Priority mail.",
  "count": 0,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/32"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
      }
    ]
  }
}
```

## Delete a Product Shipping Class ##

This API helps you delete a product shipping class.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v1/products/shipping_classes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/products/shipping_classes/32?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/shipping_classes/32?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/shipping_classes/32', ['force' => true])); ?>
```

```python
print(wcapi.delete("products/shipping_classes/32?force=true").json())
```

```ruby
woocommerce.delete("products/shipping_classes/32", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 32,
  "name": "Priority",
  "slug": "priority",
  "description": "Priority mail.",
  "count": 0,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes/32"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/shipping_classes"
      }
    ]
  }
}
```

#### Available Parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |
