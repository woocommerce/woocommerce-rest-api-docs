# Product - Categories #

This section lists all API that can be used to create, edit or otherwise manipulate product categories.

## Product Category Properties ##

|   Attribute   |   Type  |                                                                       Description                                                                       |
| ------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`          | integer | Category ID (term ID) <i class="label label-info">read-only</i>                                                                                         |
| `name`        | string  | Category name <i class="label label-info">read-only</i>                                                                                                 |
| `slug`        | string  | Category slug <i class="label label-info">read-only</i>                                                                                                 |
| `parent`      | integer | Category parent <i class="label label-info">read-only</i>                                                                                               |
| `description` | string  | Category description <i class="label label-info">read-only</i>                                                                                          |
| `display`     | string  | Category archive display type, the types available include: `default`, `products`, `subcategories` and `both` <i class="label label-info">read-only</i> |
| `image`       | string  | Category image URL <i class="label label-info">read-only</i>                                                                                            |
| `count`       | boolean | Shows the quantity of products in this category <i class="label label-info">read-only</i>                                                               |

## View A Product Category ##

This API lets you retrieve a product category.

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

## View List Of Product Categories ##

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

<aside class="notice">
	View the <a href="#product-category-properties">Product Category Properties</a> for more details on this response.
</aside>
