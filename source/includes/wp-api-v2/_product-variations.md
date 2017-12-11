# Product variations #

The product variations API allows you to create, view, update, and delete individual, or a batch, of product variations.

## Product variation properties ##

|        Attribute        |    Type   |                                                     Description                                                     |
|-------------------------|-----------|---------------------------------------------------------------------------------------------------------------------|
| `id`                    | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                       |
| `date_created`          | date-time | The date the variation was created, in the site's timezone. <i class="label label-info">read-only</i>               |
| `date_modified`         | date-time | The date the variation was last modified, in the site's timezone. <i class="label label-info">read-only</i>         |
| `description`           | string    | Variation description.                                                                                              |
| `permalink`             | string    | Variation URL. <i class="label label-info">read-only</i>                                                            |
| `sku`                   | string    | Unique identifier.                                                                                                  |
| `price`                 | string    | Current variation price. <i class="label label-info">read-only</i>                                                  |
| `regular_price`         | string    | Variation regular price.                                                                                            |
| `sale_price`            | string    | Variation sale price.                                                                                               |
| `date_on_sale_from`     | date-time | Start date of sale price, in the site's timezone.                                                                   |
| `date_on_sale_from_gmt` | date-time | Start date of sale price, as GMT.                                                                                   |
| `date_on_sale_to`       | date-time | End date of sale price, in the site's timezone.                                                                     |
| `date_on_sale_to_gmt`   | date-time | End date of sale price, as GMT.                                                                     |
| `on_sale`               | boolean   | Shows if the variation is on sale. <i class="label label-info">read-only</i>                                        |
| `visible`               | boolean   | Define if the attribute is visible on the "Additional information" tab in the product's page. Default is `true`.    |
| `purchasable`           | boolean   | Shows if the variation can be bought. <i class="label label-info">read-only</i>                                     |
| `virtual`               | boolean   | If the variation is virtual. Default is `false`.                                                                    |
| `downloadable`          | boolean   | If the variation is downloadable. Default is `false`.                                                               |
| `downloads`             | array     | List of downloadable files. See [Product variation - Downloads properties](#product-variation-downloads-properties) |
| `download_limit`        | integer   | Number of times downloadable files can be downloaded after purchase. Default is `-1`.                               |
| `download_expiry`       | integer   | Number of days until access to downloadable files expires. Default is `-1`.                                         |
| `tax_status`            | string    | Tax status. Options: `taxable`, `shipping` and `none`. Default is `taxable`.                                        |
| `tax_class`             | string    | Tax class.                                                                                                          |
| `manage_stock`          | boolean   | Stock management at variation level. Default is `false`.                                                            |
| `stock_quantity`        | integer   | Stock quantity.                                                                                                     |
| `in_stock`              | boolean   | Controls whether or not the variation is listed as "in stock" or "out of stock" on the frontend. Default is `true`. |
| `backorders`            | string    | If managing stock, this controls if backorders are allowed. Options: `no`, `notify` and `yes`. Default is `no`.     |
| `backorders_allowed`    | boolean   | Shows if backorders are allowed. <i class="label label-info">read-only</i>                                          |
| `backordered`           | boolean   | Shows if the variation is on backordered. <i class="label label-info">read-only</i>                                 |
| `weight`                | string    | Variation weight.                                                                                                   |
| `dimensions`            | object    | Variation dimensions. See [Product variation - Dimensions properties](#product-variation-dimensions-properties)     |
| `shipping_class`        | string    | Shipping class slug.                                                                                                |
| `shipping_class_id`     | string    | Shipping class ID. <i class="label label-info">read-only</i>                                                        |
| `image`                 | object    | Variation image data. See [Product variation - Image properties](#product-variation-image-properties)               |
| `attributes`            | array     | List of attributes. See [Product variation - Attributes properties](#product-variation-attributes-properties)       |
| `menu_order`            | integer   | Menu order, used to custom sort products.                                                                           |
| `meta_data`             | array     | Meta data. See [Product variation - Meta data properties](#product-variation-meta-data-properties)                  |

### Product variation - Downloads properties ###

| Attribute | Type   | Description                                              |
| --------- | ------ | -------------------------------------------------------- |
| `id`      | string | File MD5 hash. <i class="label label-info">read-only</i> |
| `name`    | string | File name.                                               |
| `file`    | string | File URL.                                                |

### Product variation - Dimensions properties ###

| Attribute |  Type  |    Description    |
|-----------|--------|-------------------|
| `length`  | string | Variation length. |
| `width`   | string | Variation width.  |
| `height`  | string | Variation height. |

### Product variation - Image properties ###

| Attribute           | Type      | Description                                                                                             |
| ------------------- | --------- | ------------------------------------------------------------------------------------------------------- |
| `id`                | integer   | Image ID.                                                                                               |
| `date_created`      | date-time | The date the image was created, in the site's timezone. <i class="label label-info">read-only</i>       |
| `date_created_gmt`  | date-time | The date the image was created, as GMT. <i class="label label-info">read-only</i>                       |
| `date_modified`     | date-time | The date the image was last modified, in the site's timezone. <i class="label label-info">read-only</i> |
| `date_modified_gmt` | date-time | The date the image was last modified, as GMT. <i class="label label-info">read-only</i>                 |
| `src`               | string    | Image URL.                                                                                              |
| `name`              | string    | Image name.                                                                                             |
| `alt`               | string    | Image alternative text.                                                                                 |
| `position`          | integer   | Image position. 0 means that the image is featured.                                                     |

### Product variation - Attributes properties ###

| Attribute | Type    | Description                   |
| --------- | ------- | ----------------------------- |
| `id`      | integer | Attribute ID.                 |
| `name`    | string  | Attribute name.               |
| `option`  | string  | Selected attribute term name. |

### Product variation - Meta data properties ###

| Attribute | Type    | Description                                        |
| --------- | ------- | -------------------------------------------------- |
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

## Create a product variation ##

This API helps you to create a new product variation.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations</h6>
	</div>
</div>

> JSON response example:

```shell
curl -X POST https://example.com/wp-json/wc/v2/products/22/variations \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "regular_price": "9.00",
  "image": {
    "id": 423
  },
  "attributes": [
    {
      "id": 6,
      "option": "Black"
    }
  ]
}'
```

```javascript
var data = {
  regular_price: '9.00',
  image: {
    id: 423
  },
  attributes: [
    {
      id: 9,
      option: 'Black'
    }
  ]
};

WooCommerce.post('products/22/variations', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'regular_price' => '9.00',
    'image' => [
        'id' => 423
    ],
    'attributes' => [
        [
            'id' => 9,
            'option' => 'Black'
        ]
    ]
];

print_r($woocommerce->post('products/22/variations', $data));
?>
```

```python
data = {
    "regular_price": "9.00",
    "image": {
        "id": 423
    },
    "attributes": [
        {
            "id": 9,
            "option": "Black"
        }
    ]
}

print(wcapi.post("products/22/variations", data).json())
```

```ruby
data = {
  regular_price: "9.00",
  image: {
    id: 423
  },
  attributes: [
    {
      id: 9,
      position: "Black"
    }
  ]
}

woocommerce.post("products/22/variations", data).parsed_response
```

> JSON response example:

```json
{
  "id": 732,
  "date_created": "2017-03-23T00:36:38",
  "date_created_gmt": "2017-03-23T03:36:38",
  "date_modified": "2017-03-23T00:36:38",
  "date_modified_gmt": "2017-03-23T03:36:38",
  "description": "",
  "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=black",
  "sku": "",
  "price": "9.00",
  "regular_price": "9.00",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "on_sale": false,
  "visible": true,
  "purchasable": true,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_class": "",
  "shipping_class_id": 0,
  "image": {
    "id": 423,
    "date_created": "2016-10-19T12:21:14",
    "date_created_gmt": "2016-10-19T16:21:14",
    "date_modified": "2016-10-19T12:21:14",
    "date_modified_gmt": "2016-10-19T16:21:14",
    "src": "https://example.com/wp-content/uploads/2016/10/T_4_front-12.jpg",
    "name": "",
    "alt": "",
    "position": 0
  },
  "attributes": [
    {
      "id": 6,
      "name": "Color",
      "option": "Black"
    }
  ],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations/732"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22"
      }
    ]
  }
}
```

## Retrieve a product variation ##

This API lets you retrieve and view a specific product variation by ID.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products/22/variations/732 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/22/variations/732', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/22/variations/732')); ?>
```

```python
print(wcapi.get("products/22/variations/732").json())
```

```ruby
woocommerce.get("products/22/variations/732").parsed_response
```

> JSON response example:

```json
{
  "id": 732,
  "date_created": "2017-03-23T00:36:38",
  "date_created_gmt": "2017-03-23T03:36:38",
  "date_modified": "2017-03-23T00:36:38",
  "date_modified_gmt": "2017-03-23T03:36:38",
  "description": "",
  "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=black",
  "sku": "",
  "price": "9.00",
  "regular_price": "9.00",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "on_sale": false,
  "visible": true,
  "purchasable": true,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_class": "",
  "shipping_class_id": 0,
  "image": {
    "id": 423,
    "date_created": "2016-10-19T12:21:14",
    "date_created_gmt": "2016-10-19T16:21:14",
    "date_modified": "2016-10-19T12:21:14",
    "date_modified_gmt": "2016-10-19T16:21:14",
    "src": "https://example.com/wp-content/uploads/2016/10/T_4_front-12.jpg",
    "name": "",
    "alt": "",
    "position": 0
  },
  "attributes": [
    {
      "id": 6,
      "name": "Color",
      "option": "Black"
    }
  ],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations/732"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22"
      }
    ]
  }
}
```

## List all product variations ##

This API helps you to view all the product variations.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products/22/variations \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/22/variations', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/22/variations')); ?>
```

```python
print(wcapi.get("products/22/variations").json())
```

```ruby
woocommerce.get("products/22/variations").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 733,
    "date_created": "2017-03-23T00:53:11",
    "date_created_gmt": "2017-03-23T03:53:11",
    "date_modified": "2017-03-23T00:53:11",
    "date_modified_gmt": "2017-03-23T03:53:11",
    "description": "",
    "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=green",
    "sku": "",
    "price": "9.00",
    "regular_price": "9.00",
    "sale_price": "",
    "date_on_sale_from": null,
    "date_on_sale_from_gmt": null,
    "date_on_sale_to": null,
    "date_on_sale_to_gmt": null,
    "on_sale": false,
    "visible": true,
    "purchasable": true,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "tax_status": "taxable",
    "tax_class": "",
    "manage_stock": false,
    "stock_quantity": null,
    "in_stock": true,
    "backorders": "no",
    "backorders_allowed": false,
    "backordered": false,
    "weight": "",
    "dimensions": {
      "length": "",
      "width": "",
      "height": ""
    },
    "shipping_class": "",
    "shipping_class_id": 0,
    "image": {
      "id": 425,
      "date_created": "2016-10-19T12:21:16",
      "date_created_gmt": "2016-10-19T16:21:16",
      "date_modified": "2016-10-19T12:21:16",
      "date_modified_gmt": "2016-10-19T16:21:16",
      "src": "https://example.com/wp-content/uploads/2016/10/T_3_front-12.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    "attributes": [
      {
        "id": 6,
        "name": "Color",
        "option": "Green"
      }
    ],
    "menu_order": 0,
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/variations/733"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/variations"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22"
        }
      ]
    }
  },
  {
    "id": 732,
    "date_created": "2017-03-23T00:36:38",
    "date_created_gmt": "2017-03-23T03:36:38",
    "date_modified": "2017-03-23T00:36:38",
    "date_modified_gmt": "2017-03-23T03:36:38",
    "description": "",
    "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=black",
    "sku": "",
    "price": "9.00",
    "regular_price": "9.00",
    "sale_price": "",
    "date_on_sale_from": null,
    "date_on_sale_from_gmt": null,
    "date_on_sale_to": null,
    "date_on_sale_to_gmt": null,
    "on_sale": false,
    "visible": true,
    "purchasable": true,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "tax_status": "taxable",
    "tax_class": "",
    "manage_stock": false,
    "stock_quantity": null,
    "in_stock": true,
    "backorders": "no",
    "backorders_allowed": false,
    "backordered": false,
    "weight": "",
    "dimensions": {
      "length": "",
      "width": "",
      "height": ""
    },
    "shipping_class": "",
    "shipping_class_id": 0,
    "image": {
      "id": 423,
      "date_created": "2016-10-19T12:21:14",
      "date_created_gmt": "2016-10-19T16:21:14",
      "date_modified": "2016-10-19T12:21:14",
      "date_modified_gmt": "2016-10-19T16:21:14",
      "src": "https://example.com/wp-content/uploads/2016/10/T_4_front-12.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    "attributes": [
      {
        "id": 6,
        "name": "Color",
        "option": "Black"
      }
    ],
    "menu_order": 0,
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/variations/732"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/variations"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22"
        }
      ]
    }
  }
]
```

#### Available parameters ####

|    Parameter     |   Type  |                                                               Description                                                               |
|------------------|---------|-----------------------------------------------------------------------------------------------------------------------------------------|
| `context`        | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.            |
| `page`           | integer | Current page of the collection. Default is `1`.                                                                                         |
| `per_page`       | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                  |
| `search`         | string  | Limit results to those matching a string.                                                                                               |
| `after`          | string  | Limit response to resources published after a given ISO8601 compliant date.                                                             |
| `before`         | string  | Limit response to resources published before a given ISO8601 compliant date.                                                            |
| `exclude`        | array   | Ensure result set excludes specific IDs.                                                                                                |
| `include`        | array   | Limit result set to specific ids.                                                                                                       |
| `offset`         | integer | Offset the result set by a specific number of items.                                                                                    |
| `order`          | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                             |
| `orderby`        | string  | Sort collection by object attribute. Options: `date`, `id`, `include`, `title` and `slug`. Default is `date`.                           |
| `parent`         | array   | Limit result set to those of particular parent IDs.                                                                                     |
| `parent_exclude` | array   | Limit result set to all items except those of a particular parent ID.                                                                   |
| `slug`           | string  | Limit result set to products with a specific slug.                                                                                      |
| `status`         | string  | Limit result set to products assigned a specific status. Options: `any`, `draft`, `pending`, `private` and `publish`. Default is `any`. |
| `type`           | string  | Limit result set to products assigned a specific type. Options: `simple`, `grouped`, `external` and `variable`.                         |
| `sku`            | string  | Limit result set to products with a specific SKU.                                                                                       |
| `featured`       | boolean | Limit result set to featured products.                                                                                                  |
| `category`       | string  | Limit result set to products assigned a specific category ID.                                                                           |
| `tag`            | string  | Limit result set to products assigned a specific tag ID.                                                                                |
| `shipping_class` | string  | Limit result set to products assigned a specific shipping class ID.                                                                     |
| `attribute`      | string  | Limit result set to products with a specific attribute.                                                                                 |
| `attribute_term` | string  | Limit result set to products with a specific attribute term ID (required an assigned attribute).                                        |
| `tax_class`      | string  | Limit result set to products with a specific tax class. Default options: `standard`, `reduced-rate` and `zero-rate`.                    |
| `in_stock`       | boolean | Limit result set to products in stock or out of stock.                                                                                  |
| `on_sale`        | boolean | Limit result set to products on sale.                                                                                                   |
| `min_price`      | string  | Limit result set to products based on a minimum price.                                                                                  |
| `max_price`      | string  | Limit result set to products based on a maximum price.                                                                                  |

## Update a product variation ##

This API lets you make changes to a product variation.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/products/22/variations/733 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "regular_price": "10.00"
}'
```

```javascript
var data = {
  regular_price: '10.00'
};

WooCommerce.put('products/22/variations/733', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'regular_price' => '10.00'
];

print_r($woocommerce->put('products/22/variations/733', $data));
?>
```

```python
data = {
    "regular_price": "10.00"
}

print(wcapi.put("products/22/variations/733", data).json())
```

```ruby
data = {
  regular_price: "10.00"
}

woocommerce.put("products/22/variations/733", data).parsed_response
```

> JSON response example:

```json
{
  "id": 733,
  "date_created": "2017-03-23T00:53:11",
  "date_created_gmt": "2017-03-23T03:53:11",
  "date_modified": "2017-03-23T00:53:11",
  "date_modified_gmt": "2017-03-23T03:53:11",
  "description": "",
  "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=green",
  "sku": "",
  "price": "10.00",
  "regular_price": "10.00",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "on_sale": false,
  "visible": true,
  "purchasable": true,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_class": "",
  "shipping_class_id": 0,
  "image": {
    "id": 425,
    "date_created": "2016-10-19T12:21:16",
    "date_created_gmt": "2016-10-19T16:21:16",
    "date_modified": "2016-10-19T12:21:16",
    "date_modified_gmt": "2016-10-19T16:21:16",
    "src": "https://example.com/wp-content/uploads/2016/10/T_3_front-12.jpg",
    "name": "",
    "alt": "",
    "position": 0
  },
  "attributes": [
    {
      "id": 6,
      "name": "Color",
      "option": "Green"
    }
  ],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations/733"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22"
      }
    ]
  }
}
```

## Delete a product variation ##

This API helps you delete a product variation.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v2/products/22/variations/733?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/22/variations/733?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/22/variations/733', ['force' => true])); ?>
```

```python
print(wcapi.delete("products/22/variations/733?force=true").json())
```

```ruby
woocommerce.delete("products/22/variations/733", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 733,
  "date_created": "2017-03-23T00:53:11",
  "date_created_gmt": "2017-03-23T03:53:11",
  "date_modified": "2017-03-23T00:53:11",
  "date_modified_gmt": "2017-03-23T03:53:11",
  "description": "",
  "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=green",
  "sku": "",
  "price": "10.00",
  "regular_price": "10.00",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "on_sale": false,
  "visible": true,
  "purchasable": true,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_class": "",
  "shipping_class_id": 0,
  "image": {
    "id": 425,
    "date_created": "2016-10-19T12:21:16",
    "date_created_gmt": "2016-10-19T16:21:16",
    "date_modified": "2016-10-19T12:21:16",
    "date_modified_gmt": "2016-10-19T16:21:16",
    "src": "https://example.com/wp-content/uploads/2016/10/T_3_front-12.jpg",
    "name": "",
    "alt": "",
    "position": 0
  },
  "attributes": [
    {
      "id": 6,
      "name": "Color",
      "option": "Green"
    }
  ],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations/733"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/variations"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |

## Batch update product variations ##

This API helps you to batch create, update and delete multiple product variations.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/variations/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/products/22/variations/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "regular_price": "10.00",
      "attributes": [
        {
          "id": 6,
          "option": "Blue"
        }
      ]
    },
    {
      "regular_price": "10.00",
      "attributes": [
        {
          "id": 6,
          "option": "White"
        }
      ]
    }
  ],
  "update": [
    {
      "id": 733,
      "regular_price": "10.00"
    }
  ],
  "delete": [
    732
  ]
}'
```

```javascript
var data = {
  create: [
    {
      regular_price: '10.00',
      attributes: [
        {
          id: 6,
          option: 'Blue'
        }
      ]
    },
    {
      regular_price: '10.00',
      attributes: [
        {
          id: 6,
          option: 'White'
        }
      ]
    }
  ],
  update: [
    {
      id: 733,
      regular_price: '10.00'
    }
  ],
  delete: [
    732
  ]
};

WooCommerce.post('products/22/variations/batch', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'create' => [
        [
            'regular_price' => '10.00',
            'attributes' => [
                [
                    'id' => 6,
                    'option' => 'Blue'
                ]
            ]
        ],
        [
            'regular_price' => '10.00',
            'attributes' => [
                [
                    'id' => 6,
                    'option' => 'White'
                ]
            ]
        ]
    ],
    'update' => [
        [
            'id' => 733,
            'regular_price' => '10.00'
        ]
    ],
    'delete' => [
        732
    ]
];

print_r($woocommerce->post('products/22/variations/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "regular_price": "10.00",
            "attributes": [
                {
                    "id": 6,
                    "option": "Blue"
                }
            ]
        },
        {
            "regular_price": "10.00",
            "attributes": [
                {
                    "id": 6,
                    "option": "White"
                }
            ]
        }
    ],
    "update": [
        {
            "id": 733,
            "regular_price": "10.00"
        }
    ],
    "delete": [
        732
    ]
}

print(wcapi.post("products/22/variations/batch", data).json())
```

```ruby
data = {
  create: [
    {
      regular_price: "10.00",
      attributes: [
        {
          id: 6,
          option: "Blue"
        }
      ]
    },
    {
      regular_price: "10.00",
      attributes: [
        {
          id: 6,
          option: "White"
        }
      ]
    }
  ],
  update: [
    {
      id: 733,
      regular_price: "10.00"
    }
  ],
  delete: [
    732
  ]
}

woocommerce.post("products/22/variations/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 735,
      "date_created": "2017-03-23T01:19:37",
      "date_created_gmt": "2017-03-23T04:19:37",
      "date_modified": "2017-03-23T01:19:37",
      "date_modified_gmt": "2017-03-23T04:19:37",
      "description": "",
      "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=blue",
      "sku": "",
      "price": "10.00",
      "regular_price": "10.00",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "on_sale": false,
      "visible": true,
      "purchasable": true,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_class": "",
      "shipping_class_id": 0,
      "image": {
        "id": 0,
        "date_created": "2017-03-22T22:19:40",
        "date_created_gmt": "2017-03-23T04:19:40",
        "date_modified": "2017-03-22T22:19:40",
        "date_modified_gmt": "2017-03-23T04:19:40",
        "src": "https://example.com/wp-content/plugins/woocommerce/assets/images/placeholder.png",
        "name": "Placeholder",
        "alt": "Placeholder",
        "position": 0
      },
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "Blue"
        }
      ],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations/735"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations"
          }
        ],
        "up": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22"
          }
        ]
      }
    },
    {
      "id": 736,
      "date_created": "2017-03-23T01:19:40",
      "date_created_gmt": "2017-03-23T04:19:40",
      "date_modified": "2017-03-23T01:19:40",
      "date_modified_gmt": "2017-03-23T04:19:40",
      "description": "",
      "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=white",
      "sku": "",
      "price": "10.00",
      "regular_price": "10.00",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "on_sale": false,
      "visible": true,
      "purchasable": true,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_class": "",
      "shipping_class_id": 0,
      "image": {
        "id": 0,
        "date_created": "2017-03-22T22:19:42",
        "date_created_gmt": "2017-03-23T04:19:42",
        "date_modified": "2017-03-22T22:19:42",
        "date_modified_gmt": "2017-03-23T04:19:42",
        "src": "https://example.com/wp-content/plugins/woocommerce/assets/images/placeholder.png",
        "name": "Placeholder",
        "alt": "Placeholder",
        "position": 0
      },
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "White"
        }
      ],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations/736"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations"
          }
        ],
        "up": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 733,
      "date_created": "2017-03-23T00:53:11",
      "date_created_gmt": "2017-03-23T03:53:11",
      "date_modified": "2017-03-23T00:53:11",
      "date_modified_gmt": "2017-03-23T03:53:11",
      "description": "",
      "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=green",
      "sku": "",
      "price": "10.00",
      "regular_price": "10.00",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "on_sale": false,
      "visible": true,
      "purchasable": true,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_class": "",
      "shipping_class_id": 0,
      "image": {
        "id": 425,
        "date_created": "2016-10-19T12:21:16",
        "date_created_gmt": "2016-10-19T16:21:16",
        "date_modified": "2016-10-19T12:21:16",
        "date_modified_gmt": "2016-10-19T16:21:16",
        "src": "https://example.com/wp-content/uploads/2016/10/T_3_front-12.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "Green"
        }
      ],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations/733"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations"
          }
        ],
        "up": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 732,
      "date_created": "2017-03-23T00:36:38",
      "date_created_gmt": "2017-03-23T03:36:38",
      "date_modified": "2017-03-23T00:36:38",
      "date_modified_gmt": "2017-03-23T03:36:38",
      "description": "",
      "permalink": "https://example.com/product/ship-your-idea/?attribute_pa_color=black",
      "sku": "",
      "price": "9.00",
      "regular_price": "9.00",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "on_sale": false,
      "visible": true,
      "purchasable": true,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_class": "",
      "shipping_class_id": 0,
      "image": {
        "id": 423,
        "date_created": "2016-10-19T12:21:14",
        "date_created_gmt": "2016-10-19T16:21:14",
        "date_modified": "2016-10-19T12:21:14",
        "date_modified_gmt": "2016-10-19T16:21:14",
        "src": "https://example.com/wp-content/uploads/2016/10/T_4_front-12.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "Black"
        }
      ],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations/732"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22/variations"
          }
        ],
        "up": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/22"
          }
        ]
      }
    }
  ]
}
```
