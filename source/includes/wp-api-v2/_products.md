# Products #

The products API allows you to create, view, update, and delete individual, or a batch, of products.

## Product properties ##

|        Attribute        |    Type   |                                                     Description                                                      |
|-------------------------|-----------|----------------------------------------------------------------------------------------------------------------------|
| `id`                    | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                        |
| `name`                  | string    | Product name.                                                                                                        |
| `slug`                  | string    | Product slug.                                                                                                        |
| `permalink`             | string    | Product URL. <i class="label label-info">read-only</i>                                                               |
| `date_created`          | date-time | The date the product was created, in the site's timezone. <i class="label label-info">read-only</i>                  |
| `date_created_gmt`      | date-time | The date the product was created, as GMT. <i class="label label-info">read-only</i>                                  |
| `date_modified`         | date-time | The date the product was last modified, in the site's timezone. <i class="label label-info">read-only</i>            |
| `date_modified_gmt`     | date-time | The date the product was last modified, as GMT. <i class="label label-info">read-only</i>                            |
| `type`                  | string    | Product type. Options: `simple`, `grouped`, `external` and `variable`. Default is `simple`.                          |
| `status`                | string    | Product status (post status). Options: `draft`, `pending`, `private` and `publish`. Default is `publish`.            |
| `featured`              | boolean   | Featured product. Default is `false`.                                                                                |
| `catalog_visibility`    | string    | Catalog visibility. Options: `visible`, `catalog`, `search` and `hidden`. Default is `visible`.                      |
| `description`           | string    | Product description.                                                                                                 |
| `short_description`     | string    | Product short description.                                                                                           |
| `sku`                   | string    | Unique identifier.                                                                                                   |
| `price`                 | string    | Current product price. <i class="label label-info">read-only</i>                                                     |
| `regular_price`         | string    | Product regular price.                                                                                               |
| `sale_price`            | string    | Product sale price.                                                                                                  |
| `date_on_sale_from`     | date-time | Start date of sale price, in the site's timezone.                                                                    |
| `date_on_sale_from_gmt` | date-time | Start date of sale price, as GMT.                                                                                    |
| `date_on_sale_to`       | date-time | End date of sale price, in the site's timezone.                                                                      |
| `date_on_sale_to_gmt`   | date-time | End date of sale price, as GMT.                                                                      |
| `price_html`            | string    | Price formatted in HTML. <i class="label label-info">read-only</i>                                                   |
| `on_sale`               | boolean   | Shows if the product is on sale. <i class="label label-info">read-only</i>                                           |
| `purchasable`           | boolean   | Shows if the product can be bought. <i class="label label-info">read-only</i>                                        |
| `total_sales`           | integer   | Amount of sales. <i class="label label-info">read-only</i>                                                           |
| `virtual`               | boolean   | If the product is virtual. Default is `false`.                                                                       |
| `downloadable`          | boolean   | If the product is downloadable. Default is `false`.                                                                  |
| `downloads`             | array     | List of downloadable files. See [Product - Downloads properties](#product-downloads-properties)                      |
| `download_limit`        | integer   | Number of times downloadable files can be downloaded after purchase. Default is `-1`.                                |
| `download_expiry`       | integer   | Number of days until access to downloadable files expires. Default is `-1`.                                          |
| `external_url`          | string    | Product external URL. Only for external products.                                                                    |
| `button_text`           | string    | Product external button text. Only for external products.                                                            |
| `tax_status`            | string    | Tax status. Options: `taxable`, `shipping` and `none`. Default is `taxable`.                                         |
| `tax_class`             | string    | Tax class.                                                                                                           |
| `manage_stock`          | boolean   | Stock management at product level. Default is `false`.                                                               |
| `stock_quantity`        | integer   | Stock quantity.                                                                                                      |
| `in_stock`              | boolean   | Controls whether or not the product is listed as "in stock" or "out of stock" on the frontend. Default is `true`.    |
| `backorders`            | string    | If managing stock, this controls if backorders are allowed. Options: `no`, `notify` and `yes`. Default is `no`.      |
| `backorders_allowed`    | boolean   | Shows if backorders are allowed. <i class="label label-info">read-only</i>                                           |
| `backordered`           | boolean   | Shows if the product is on backordered. <i class="label label-info">read-only</i>                                    |
| `sold_individually`     | boolean   | Allow one item to be bought in a single order. Default is `false`.                                                   |
| `weight`                | string    | Product weight.                                                                                                      |
| `dimensions`            | object    | Product dimensions. See [Product - Dimensions properties](#product-dimensions-properties)                            |
| `shipping_required`     | boolean   | Shows if the product need to be shipped. <i class="label label-info">read-only</i>                                   |
| `shipping_taxable`      | boolean   | Shows whether or not the product shipping is taxable. <i class="label label-info">read-only</i>                      |
| `shipping_class`        | string    | Shipping class slug.                                                                                                 |
| `shipping_class_id`     | string    | Shipping class ID. <i class="label label-info">read-only</i>                                                         |
| `reviews_allowed`       | boolean   | Allow reviews. Default is `true`.                                                                                    |
| `average_rating`        | string    | Reviews average rating. <i class="label label-info">read-only</i>                                                    |
| `rating_count`          | integer   | Amount of reviews that the product have. <i class="label label-info">read-only</i>                                   |
| `related_ids`           | array     | List of related products IDs. <i class="label label-info">read-only</i>                                              |
| `upsell_ids`            | array     | List of up-sell products IDs.                                                                                        |
| `cross_sell_ids`        | array     | List of cross-sell products IDs.                                                                                     |
| `parent_id`             | integer   | Product parent ID.                                                                                                   |
| `purchase_note`         | string    | Optional note to send the customer after purchase.                                                                   |
| `categories`            | array     | List of categories. See [Product - Categories properties](#product-categories-properties)                            |
| `tags`                  | array     | List of tags. See [Product - Tags properties](#product-tags-properties)                                              |
| `images`                | object    | List of images. See [Product - Images properties](#product-images-properties)                                        |
| `attributes`            | array     | List of attributes. See [Product - Attributes properties](#product-attributes-properties)                            |
| `default_attributes`    | array     | Defaults variation attributes. See [Product - Default attributes properties](#product-default-attributes-properties) |
| `variations`            | array     | List of variations IDs. <i class="label label-info">read-only</i>                                                    |
| `grouped_products`      | array     | List of grouped products ID.                                                                                         |
| `menu_order`            | integer   | Menu order, used to custom sort products.                                                                            |
| `meta_data`             | array     | Meta data. See [Product - Meta data properties](#product-meta-data-properties)                                       |

### Product - Downloads properties ###

| Attribute | Type   | Description                                              |
| --------- | ------ | -------------------------------------------------------- |
| `id`      | string | File MD5 hash. <i class="label label-info">read-only</i> |
| `name`    | string | File name.                                               |
| `file`    | string | File URL.                                                |

### Product - Dimensions properties ###

| Attribute |  Type  |   Description   |
|-----------|--------|-----------------|
| `length`  | string | Product length. |
| `width`   | string | Product width.  |
| `height`  | string | Product height. |

### Product - Categories properties ###

| Attribute | Type    | Description                                              |
| --------- | ------- | -------------------------------------------------------- |
| `id`      | integer | Category ID.                                             |
| `name`    | string  | Category name. <i class="label label-info">read-only</i> |
| `slug`    | string  | Category slug. <i class="label label-info">read-only</i> |

### Product - Tags properties ###

| Attribute | Type    | Description                                         |
| --------- | ------- | --------------------------------------------------- |
| `id`      | integer | Tag ID.                                             |
| `name`    | string  | Tag name. <i class="label label-info">read-only</i> |
| `slug`    | string  | Tag slug. <i class="label label-info">read-only</i> |

### Product - Images properties ###

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

### Product - Attributes properties ###

| Attribute   | Type    | Description                                                                                                       |
| ----------- | ------- | ----------------------------------------------------------------------------------------------------------------- |
| `id`        | integer | Attribute ID.                                                                                                     |
| `name`      | string  | Attribute name.                                                                                                   |
| `position`  | integer | Attribute position.                                                                                               |
| `visible`   | boolean | Define if the attribute is visible on the "Additional information" tab in the product's page. Default is `false`. |
| `variation` | boolean | Define if the attribute can be used as variation. Default is `false`.                                             |
| `options`   | array   | List of available term names of the attribute.                                                                    |

### Product - Default attributes properties ###

| Attribute | Type    | Description                   |
| --------- | ------- | ----------------------------- |
| `id`      | integer | Attribute ID.                 |
| `name`    | string  | Attribute name.               |
| `option`  | string  | Selected attribute term name. |

### Product - Meta data properties ###

| Attribute | Type    | Description                                        |
| --------- | ------- | -------------------------------------------------- |
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

## Create a product ##

This API helps you to create a new product.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/products</h6>
	</div>
</div>

> Example of how to create a `simple` product:

```shell
curl -X POST https://example.com/wp-json/wc/v2/products \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "name": "Premium Quality",
  "type": "simple",
  "regular_price": "21.99",
  "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  "categories": [
    {
      "id": 9
    },
    {
      "id": 14
    }
  ],
  "images": [
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
      "position": 0
    },
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
      "position": 1
    }
  ]
}'
```

```javascript
var data = {
  name: 'Premium Quality',
  type: 'simple',
  regular_price: '21.99',
  description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
  short_description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
  categories: [
    {
      id: 9
    },
    {
      id: 14
    }
  ],
  images: [
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg',
      position: 0
    },
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg',
      position: 1
    }
  ]
};

WooCommerce.post('products', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'name' => 'Premium Quality',
    'type' => 'simple',
    'regular_price' => '21.99',
    'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
    'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    'categories' => [
        [
            'id' => 9
        ],
        [
            'id' => 14
        ]
    ],
    'images' => [
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg',
            'position' => 0
        ],
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg',
            'position' => 1
        ]
    ]
];

print_r($woocommerce->post('products', $data));
?>
```

```python
data = {
    "name": "Premium Quality",
    "type": "simple",
    "regular_price": "21.99",
    "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    "categories": [
        {
            "id": 9
        },
        {
            "id": 14
        }
    ],
    "images": [
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
            "position": 0
        },
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
            "position": 1
        }
    ]
}

print(wcapi.post("products", data).json())
```

```ruby
data = {
  name: "Premium Quality",
  type: "simple",
  regular_price: "21.99",
  description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  short_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  categories: [
    {
      id: 9
    },
    {
      id: 14
    }
  ],
  images: [
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
      position: 0
    },
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
      position: 1
    }
  ]
}

woocommerce.post("products", data).parsed_response
```

> JSON response example:

```json
{
  "id": 794,
  "name": "Premium Quality",
  "slug": "premium-quality-19",
  "permalink": "https://example.com/product/premium-quality-19/",
  "date_created": "2017-03-23T17:01:14",
  "date_created_gmt": "2017-03-23T20:01:14",
  "date_modified": "2017-03-23T17:01:14",
  "date_modified_gmt": "2017-03-23T20:01:14",
  "type": "simple",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "21.99",
  "regular_price": "21.99",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>21.99</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "external_url": "",
  "button_text": "",
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "sold_individually": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_required": true,
  "shipping_taxable": true,
  "shipping_class": "",
  "shipping_class_id": 0,
  "reviews_allowed": true,
  "average_rating": "0.00",
  "rating_count": 0,
  "related_ids": [
    53,
    40,
    56,
    479,
    99
  ],
  "upsell_ids": [],
  "cross_sell_ids": [],
  "parent_id": 0,
  "purchase_note": "",
  "categories": [
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing"
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts"
    }
  ],
  "tags": [],
  "images": [
    {
      "id": 792,
      "date_created": "2017-03-23T14:01:13",
      "date_created_gmt": "2017-03-23T20:01:13",
      "date_modified": "2017-03-23T14:01:13",
      "date_modified_gmt": "2017-03-23T20:01:13",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 793,
      "date_created": "2017-03-23T14:01:14",
      "date_created_gmt": "2017-03-23T20:01:14",
      "date_modified": "2017-03-23T14:01:14",
      "date_modified_gmt": "2017-03-23T20:01:14",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
      "name": "",
      "alt": "",
      "position": 1
    }
  ],
  "attributes": [],
  "default_attributes": [],
  "variations": [],
  "grouped_products": [],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/794"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products"
      }
    ]
  }
}
```

> Example of how to create a `variable` product with global and non-global attributes:

```shell
curl -X POST https://example.com/wp-json/wc/v2/products \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "name": "Ship Your Idea",
  "type": "variable",
  "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  "categories": [
    {
      "id": 9
    },
    {
      "id": 14
    }
  ],
  "images": [
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
      "position": 0
    },
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg",
      "position": 1
    },
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
      "position": 2
    },
    {
      "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg",
      "position": 3
    }
  ],
  "attributes": [
    {
      "id": 6,
      "position": 0,
      "visible": false,
      "variation": true,
      "options": [
        "Black",
        "Green"
      ]
    },
    {
      "name": "Size",
      "position": 0,
      "visible": true,
      "variation": true,
      "options": [
        "S",
        "M"
      ]
    }
  ],
  "default_attributes": [
    {
      "id": 6,
      "option": "Black"
    },
    {
      "name": "Size",
      "option": "S"
    }
  ]
}'
```

```javascript
var data = {
  name: 'Ship Your Idea',
  type: 'variable',
  description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
  short_description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
  categories: [
    {
      id: 9
    },
    {
      id: 14
    }
  ],
  images: [
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg',
      position: 0
    },
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg',
      position: 1
    },
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg',
      position: 2
    },
    {
      src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg',
      position: 3
    }
  ],
  attributes: [
    {
      id: 6,
      position: 0,
      visible: true,
      variation: true,
      options: [
        'Black',
        'Green'
      ]
    },
    {
      name: 'Size',
      position: 0,
      visible: false,
      variation: true,
      options: [
        'S',
        'M'
      ]
    }
  ],
  default_attributes: [
    {
      id: 6,
      option: 'Black'
    },
    {
      name: 'Size',
      option: 'S'
    }
  ]
};

WooCommerce.post('products', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'name' => 'Ship Your Idea',
    'type' => 'variable',
    'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
    'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    'categories' => [
        [
            'id' => 9
        ],
        [
            'id' => 14
        ]
    ],
    'images' => [
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg',
            'position' => 0
        ],
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg',
            'position' => 1
        ],
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg',
            'position' => 2
        ],
        [
            'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg',
            'position' => 3
        ]
    ],
    'attributes' => [
        [
            'id' => 6,
            'position' => 0,
            'visible' => false,
            'variation' => true,
            'options' => [
                'Black',
                'Green'
            ]
        ],
        [
            'name' => 'Size',
            'position' => 0,
            'visible' => true,
            'variation' => true,
            'options' => [
                'S',
                'M'
            ]
        ]
    ],
    'default_attributes' => [
        [
            'id' => 6,
            'option' => 'Black'
        ],
        [
            'name' => 'Size',
            'option' => 'S'
        ]
    ]
];

print_r($woocommerce->post('products', $data));
?>
```

```python
data = {
    "name": "Ship Your Idea",
    "type": "variable",
    "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    "categories": [
        {
            "id": 9
        },
        {
            "id": 14
        }
    ],
    "images": [
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
            "position": 0
        },
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg",
            "position": 1
        },
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
            "position": 2
        },
        {
            "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg",
            "position": 3
        }
    ],
    "attributes": [
        {
            "id": 6,
            "position": 0,
            "visible": False,
            "variation": True,
            "options": [
                "Black",
                "Green"
            ]
        },
        {
            "name": "Size",
            "position": 0,
            "visible": True,
            "variation": True,
            "options": [
                "S",
                "M"
            ]
        }
    ],
    "default_attributes": [
        {
            "id": 6,
            "option": "Black"
        },
        {
            "name": "Size",
            "option": "S"
        }
    ]
}

print(wcapi.post("products", data).json())
```

```ruby
data = {
  name: "Ship Your Idea",
  type: "variable",
  description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  short_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  categories: [
    {
      id: 9
    },
    {
      id: 14
    }
  ],
  images: [
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
      position: 0
    },
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg",
      position: 1
    },
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
      position: 2
    },
    {
      src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg",
      position: 3
    }
  ],
  attributes: [
    {
      id: 6,
      position: 0,
      visible: false,
      variation: true,
      options: [
        "Black",
        "Green"
      ]
    },
    {
      name: "Size",
      position: 0,
      visible: true,
      variation: true,
      options: [
        "S",
        "M"
      ]
    }
  ],
  default_attributes: [
    {
      id: 6,
      option: "Black"
    },
    {
      name: "Size",
      option: "S"
    }
  ]
}

woocommerce.post("products", data).parsed_response
```

> JSON response example:

```json
{
  "id": 799,
  "name": "Ship Your Idea",
  "slug": "ship-your-idea-22",
  "permalink": "https://example.com/product/ship-your-idea-22/",
  "date_created": "2017-03-23T17:03:12",
  "date_created_gmt": "2017-03-23T20:03:12",
  "date_modified": "2017-03-23T17:03:12",
  "date_modified_gmt": "2017-03-23T20:03:12",
  "type": "variable",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "",
  "regular_price": "",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "price_html": "",
  "on_sale": false,
  "purchasable": false,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "external_url": "",
  "button_text": "",
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "sold_individually": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_required": true,
  "shipping_taxable": true,
  "shipping_class": "",
  "shipping_class_id": 0,
  "reviews_allowed": true,
  "average_rating": "0.00",
  "rating_count": 0,
  "related_ids": [
    472,
    387,
    19,
    53,
    396
  ],
  "upsell_ids": [],
  "cross_sell_ids": [],
  "parent_id": 0,
  "purchase_note": "",
  "categories": [
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing"
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts"
    }
  ],
  "tags": [],
  "images": [
    {
      "id": 795,
      "date_created": "2017-03-23T14:03:08",
      "date_created_gmt": "2017-03-23T20:03:08",
      "date_modified": "2017-03-23T14:03:08",
      "date_modified_gmt": "2017-03-23T20:03:08",
      "src": "https://example.com/wp-content/uploads/2017/03/T_4_front-11.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 796,
      "date_created": "2017-03-23T14:03:09",
      "date_created_gmt": "2017-03-23T20:03:09",
      "date_modified": "2017-03-23T14:03:09",
      "date_modified_gmt": "2017-03-23T20:03:09",
      "src": "https://example.com/wp-content/uploads/2017/03/T_4_back-10.jpg",
      "name": "",
      "alt": "",
      "position": 1
    },
    {
      "id": 797,
      "date_created": "2017-03-23T14:03:10",
      "date_created_gmt": "2017-03-23T20:03:10",
      "date_modified": "2017-03-23T14:03:10",
      "date_modified_gmt": "2017-03-23T20:03:10",
      "src": "https://example.com/wp-content/uploads/2017/03/T_3_front-10.jpg",
      "name": "",
      "alt": "",
      "position": 2
    },
    {
      "id": 798,
      "date_created": "2017-03-23T14:03:11",
      "date_created_gmt": "2017-03-23T20:03:11",
      "date_modified": "2017-03-23T14:03:11",
      "date_modified_gmt": "2017-03-23T20:03:11",
      "src": "https://example.com/wp-content/uploads/2017/03/T_3_back-10.jpg",
      "name": "",
      "alt": "",
      "position": 3
    }
  ],
  "attributes": [
    {
      "id": 6,
      "name": "Color",
      "position": 0,
      "visible": false,
      "variation": true,
      "options": [
        "Black",
        "Green"
      ]
    },
    {
      "id": 0,
      "name": "Size",
      "position": 0,
      "visible": true,
      "variation": true,
      "options": [
        "S",
        "M"
      ]
    }
  ],
  "default_attributes": [
    {
      "id": 6,
      "name": "Color",
      "option": "black"
    },
    {
      "id": 0,
      "name": "Size",
      "option": "S"
    }
  ],
  "variations": [],
  "grouped_products": [],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/799"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products"
      }
    ]
  }
}
```

## Retrieve a product ##

This API lets you retrieve and view a specific product by ID.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products/794 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/794', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/794')); ?>
```

```python
print(wcapi.get("products/794").json())
```

```ruby
woocommerce.get("products/794").parsed_response
```

> JSON response example:

```json
{
  "id": 794,
  "name": "Premium Quality",
  "slug": "premium-quality-19",
  "permalink": "https://example.com/product/premium-quality-19/",
  "date_created": "2017-03-23T17:01:14",
  "date_created_gmt": "2017-03-23T20:01:14",
  "date_modified": "2017-03-23T17:01:14",
  "date_modified_gmt": "2017-03-23T20:01:14",
  "type": "simple",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "21.99",
  "regular_price": "21.99",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>21.99</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "external_url": "",
  "button_text": "",
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "sold_individually": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_required": true,
  "shipping_taxable": true,
  "shipping_class": "",
  "shipping_class_id": 0,
  "reviews_allowed": true,
  "average_rating": "0.00",
  "rating_count": 0,
  "related_ids": [
    53,
    40,
    56,
    479,
    99
  ],
  "upsell_ids": [],
  "cross_sell_ids": [],
  "parent_id": 0,
  "purchase_note": "",
  "categories": [
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing"
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts"
    }
  ],
  "tags": [],
  "images": [
    {
      "id": 792,
      "date_created": "2017-03-23T14:01:13",
      "date_created_gmt": "2017-03-23T20:01:13",
      "date_modified": "2017-03-23T14:01:13",
      "date_modified_gmt": "2017-03-23T20:01:13",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 793,
      "date_created": "2017-03-23T14:01:14",
      "date_created_gmt": "2017-03-23T20:01:14",
      "date_modified": "2017-03-23T14:01:14",
      "date_modified_gmt": "2017-03-23T20:01:14",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
      "name": "",
      "alt": "",
      "position": 1
    }
  ],
  "attributes": [],
  "default_attributes": [],
  "variations": [],
  "grouped_products": [],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/794"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products"
      }
    ]
  }
}
```

## List all products ##

This API helps you to view all the products.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products')); ?>
```

```python
print(wcapi.get("products").json())
```

```ruby
woocommerce.get("products").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 799,
    "name": "Ship Your Idea",
    "slug": "ship-your-idea-22",
    "permalink": "https://example.com/product/ship-your-idea-22/",
    "date_created": "2017-03-23T17:03:12",
    "date_created_gmt": "2017-03-23T20:03:12",
    "date_modified": "2017-03-23T17:03:12",
    "date_modified_gmt": "2017-03-23T20:03:12",
    "type": "variable",
    "status": "publish",
    "featured": false,
    "catalog_visibility": "visible",
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "sku": "",
    "price": "",
    "regular_price": "",
    "sale_price": "",
    "date_on_sale_from": null,
    "date_on_sale_from_gmt": null,
    "date_on_sale_to": null,
    "date_on_sale_to_gmt": null,
    "price_html": "",
    "on_sale": false,
    "purchasable": false,
    "total_sales": 0,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "external_url": "",
    "button_text": "",
    "tax_status": "taxable",
    "tax_class": "",
    "manage_stock": false,
    "stock_quantity": null,
    "in_stock": true,
    "backorders": "no",
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "weight": "",
    "dimensions": {
      "length": "",
      "width": "",
      "height": ""
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": 0,
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      31,
      22,
      369,
      414,
      56
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "purchase_note": "",
    "categories": [
      {
        "id": 9,
        "name": "Clothing",
        "slug": "clothing"
      },
      {
        "id": 14,
        "name": "T-shirts",
        "slug": "t-shirts"
      }
    ],
    "tags": [],
    "images": [
      {
        "id": 795,
        "date_created": "2017-03-23T14:03:08",
        "date_created_gmt": "2017-03-23T20:03:08",
        "date_modified": "2017-03-23T14:03:08",
        "date_modified_gmt": "2017-03-23T20:03:08",
        "src": "https://example.com/wp-content/uploads/2017/03/T_4_front-11.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 796,
        "date_created": "2017-03-23T14:03:09",
        "date_created_gmt": "2017-03-23T20:03:09",
        "date_modified": "2017-03-23T14:03:09",
        "date_modified_gmt": "2017-03-23T20:03:09",
        "src": "https://example.com/wp-content/uploads/2017/03/T_4_back-10.jpg",
        "name": "",
        "alt": "",
        "position": 1
      },
      {
        "id": 797,
        "date_created": "2017-03-23T14:03:10",
        "date_created_gmt": "2017-03-23T20:03:10",
        "date_modified": "2017-03-23T14:03:10",
        "date_modified_gmt": "2017-03-23T20:03:10",
        "src": "https://example.com/wp-content/uploads/2017/03/T_3_front-10.jpg",
        "name": "",
        "alt": "",
        "position": 2
      },
      {
        "id": 798,
        "date_created": "2017-03-23T14:03:11",
        "date_created_gmt": "2017-03-23T20:03:11",
        "date_modified": "2017-03-23T14:03:11",
        "date_modified_gmt": "2017-03-23T20:03:11",
        "src": "https://example.com/wp-content/uploads/2017/03/T_3_back-10.jpg",
        "name": "",
        "alt": "",
        "position": 3
      }
    ],
    "attributes": [
      {
        "id": 6,
        "name": "Color",
        "position": 0,
        "visible": false,
        "variation": true,
        "options": [
          "Black",
          "Green"
        ]
      },
      {
        "id": 0,
        "name": "Size",
        "position": 0,
        "visible": true,
        "variation": true,
        "options": [
          "S",
          "M"
        ]
      }
    ],
    "default_attributes": [],
    "variations": [],
    "grouped_products": [],
    "menu_order": 0,
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/799"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products"
        }
      ]
    }
  },
  {
    "id": 794,
    "name": "Premium Quality",
    "slug": "premium-quality-19",
    "permalink": "https://example.com/product/premium-quality-19/",
    "date_created": "2017-03-23T17:01:14",
    "date_created_gmt": "2017-03-23T20:01:14",
    "date_modified": "2017-03-23T17:01:14",
    "date_modified_gmt": "2017-03-23T20:01:14",
    "type": "simple",
    "status": "publish",
    "featured": false,
    "catalog_visibility": "visible",
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "sku": "",
    "price": "21.99",
    "regular_price": "21.99",
    "sale_price": "",
    "date_on_sale_from": null,
    "date_on_sale_from_gmt": null,
    "date_on_sale_to": null,
    "date_on_sale_to_gmt": null,
    "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>21.99</span>",
    "on_sale": false,
    "purchasable": true,
    "total_sales": 0,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "external_url": "",
    "button_text": "",
    "tax_status": "taxable",
    "tax_class": "",
    "manage_stock": false,
    "stock_quantity": null,
    "in_stock": true,
    "backorders": "no",
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "weight": "",
    "dimensions": {
      "length": "",
      "width": "",
      "height": ""
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": 0,
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      463,
      47,
      31,
      387,
      458
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "purchase_note": "",
    "categories": [
      {
        "id": 9,
        "name": "Clothing",
        "slug": "clothing"
      },
      {
        "id": 14,
        "name": "T-shirts",
        "slug": "t-shirts"
      }
    ],
    "tags": [],
    "images": [
      {
        "id": 792,
        "date_created": "2017-03-23T14:01:13",
        "date_created_gmt": "2017-03-23T20:01:13",
        "date_modified": "2017-03-23T14:01:13",
        "date_modified_gmt": "2017-03-23T20:01:13",
        "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 793,
        "date_created": "2017-03-23T14:01:14",
        "date_created_gmt": "2017-03-23T20:01:14",
        "date_modified": "2017-03-23T14:01:14",
        "date_modified_gmt": "2017-03-23T20:01:14",
        "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
        "name": "",
        "alt": "",
        "position": 1
      }
    ],
    "attributes": [],
    "default_attributes": [
      {
        "id": 6,
        "name": "Color",
        "option": "black"
      },
      {
        "id": 0,
        "name": "Size",
        "option": "S"
      }
    ],
    "variations": [],
    "grouped_products": [],
    "menu_order": 0,
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/794"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products"
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

## Update a product ##

This API lets you make changes to a product.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/products/794 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "regular_price": "24.54"
}'
```

```javascript
var data = {
  regular_price: '24.54'
};

WooCommerce.put('products/794', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'regular_price' => '24.54'
];

print_r($woocommerce->put('products/794', $data));
?>
```

```python
data = {
    "regular_price": "24.54"
}

print(wcapi.put("products/794", data).json())
```

```ruby
data = {
  regular_price: "24.54"
}

woocommerce.put("products/794", data).parsed_response
```

> JSON response example:

```json
{
  "id": 794,
  "name": "Premium Quality",
  "slug": "premium-quality-19",
  "permalink": "https://example.com/product/premium-quality-19/",
  "date_created": "2017-03-23T17:01:14",
  "date_created_gmt": "2017-03-23T20:01:14",
  "date_modified": "2017-03-23T17:01:14",
  "date_modified_gmt": "2017-03-23T20:01:14",
  "type": "simple",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "24.54",
  "regular_price": "24.54",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>24.54</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "external_url": "",
  "button_text": "",
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "sold_individually": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_required": true,
  "shipping_taxable": true,
  "shipping_class": "",
  "shipping_class_id": 0,
  "reviews_allowed": true,
  "average_rating": "0.00",
  "rating_count": 0,
  "related_ids": [
    479,
    387,
    22,
    463,
    396
  ],
  "upsell_ids": [],
  "cross_sell_ids": [],
  "parent_id": 0,
  "purchase_note": "",
  "categories": [
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing"
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts"
    }
  ],
  "tags": [],
  "images": [
    {
      "id": 792,
      "date_created": "2017-03-23T14:01:13",
      "date_created_gmt": "2017-03-23T20:01:13",
      "date_modified": "2017-03-23T14:01:13",
      "date_modified_gmt": "2017-03-23T20:01:13",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 793,
      "date_created": "2017-03-23T14:01:14",
      "date_created_gmt": "2017-03-23T20:01:14",
      "date_modified": "2017-03-23T14:01:14",
      "date_modified_gmt": "2017-03-23T20:01:14",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
      "name": "",
      "alt": "",
      "position": 1
    }
  ],
  "attributes": [],
  "default_attributes": [],
  "variations": [],
  "grouped_products": [],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/794"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products"
      }
    ]
  }
}
```

## Delete a product ##

This API helps you delete a product.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v2/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v2/products/794?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/794?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/794', ['force' => true])); ?>
```

```python
print(wcapi.delete("products/794?force=true").json())
```

```ruby
woocommerce.delete("products/794", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 794,
  "name": "Premium Quality",
  "slug": "premium-quality-19",
  "permalink": "https://example.com/product/premium-quality-19/",
  "date_created": "2017-03-23T17:01:14",
  "date_created_gmt": "2017-03-23T20:01:14",
  "date_modified": "2017-03-23T17:01:14",
  "date_modified_gmt": "2017-03-23T20:01:14",
  "type": "simple",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "24.54",
  "regular_price": "24.54",
  "sale_price": "",
  "date_on_sale_from": null,
  "date_on_sale_from_gmt": null,
  "date_on_sale_to": null,
  "date_on_sale_to_gmt": null,
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>24.54</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "external_url": "",
  "button_text": "",
  "tax_status": "taxable",
  "tax_class": "",
  "manage_stock": false,
  "stock_quantity": null,
  "in_stock": true,
  "backorders": "no",
  "backorders_allowed": false,
  "backordered": false,
  "sold_individually": false,
  "weight": "",
  "dimensions": {
    "length": "",
    "width": "",
    "height": ""
  },
  "shipping_required": true,
  "shipping_taxable": true,
  "shipping_class": "",
  "shipping_class_id": 0,
  "reviews_allowed": true,
  "average_rating": "0.00",
  "rating_count": 0,
  "related_ids": [
    479,
    387,
    22,
    463,
    396
  ],
  "upsell_ids": [],
  "cross_sell_ids": [],
  "parent_id": 0,
  "purchase_note": "",
  "categories": [
    {
      "id": 9,
      "name": "Clothing",
      "slug": "clothing"
    },
    {
      "id": 14,
      "name": "T-shirts",
      "slug": "t-shirts"
    }
  ],
  "tags": [],
  "images": [
    {
      "id": 792,
      "date_created": "2017-03-23T14:01:13",
      "date_created_gmt": "2017-03-23T20:01:13",
      "date_modified": "2017-03-23T14:01:13",
      "date_modified_gmt": "2017-03-23T20:01:13",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 793,
      "date_created": "2017-03-23T14:01:14",
      "date_created_gmt": "2017-03-23T20:01:14",
      "date_modified": "2017-03-23T14:01:14",
      "date_modified_gmt": "2017-03-23T20:01:14",
      "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
      "name": "",
      "alt": "",
      "position": 1
    }
  ],
  "attributes": [],
  "default_attributes": [],
  "variations": [],
  "grouped_products": [],
  "menu_order": 0,
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/794"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                                Description                                |
|-----------|--------|---------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the product, Default is `false`. |

## Batch update products ##

This API helps you to batch create, update and delete multiple products.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/products/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/products/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "name": "Woo Single #1",
      "type": "simple",
      "regular_price": "21.99",
      "virtual": true,
      "downloadable": true,
      "downloads": [
        {
          "name": "Woo Single",
          "file": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg"
        }
      ],
      "categories": [
        {
          "id": 11
        },
        {
          "id": 13
        }
      ],
      "images": [
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg",
          "position": 0
        }
      ]
    },
    {
      "name": "New Premium Quality",
      "type": "simple",
      "regular_price": "21.99",
      "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
      "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
      "categories": [
        {
          "id": 9
        },
        {
          "id": 14
        }
      ],
      "images": [
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
          "position": 0
        },
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
          "position": 1
        }
      ]
    }
  ],
  "update": [
    {
      "id": 799,
      "default_attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "Green"
        },
        {
          "id": 0,
          "name": "Size",
          "option": "M"
        }
      ]
    }
  ],
  "delete": [
    794
  ]
}'
```

```javascript
var data = {
  create: [
    {
      name: 'Woo Single #1',
      type: 'simple',
      regular_price: '21.99',
      virtual: true,
      downloadable: true,
      downloads: [
        {
          name: 'Woo Single',
          file: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg'
        }
      ],
      categories: [
        {
          id: 11
        },
        {
          id: 13
        }
      ],
      images: [
        {
          src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg',
          position: 0
        }
      ]
    },
    {
      name: 'New Premium Quality',
      type: 'simple',
      regular_price: '21.99',
      description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      short_description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
      categories: [
        {
          id: 9
        },
        {
          id: 14
        }
      ],
      images: [
        {
          src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg',
          position: 0
        },
        {
          src: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg',
          position: 1
        }
      ]
    }
  ],
  update: [
    {
      id: 799,
      default_attributes: [
        {
          id: 6,
          name: 'Color',
          option: 'Green'
        },
        {
          id: 0,
          name: 'Size',
          option: 'M'
        }
      ]
    }
  ],
  delete: [
    794
  ]
};

WooCommerce.post('products/batch', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'create' => [
        [
            'name' => 'Woo Single #1',
            'type' => 'simple',
            'regular_price' => '21.99',
            'virtual' => true,
            'downloadable' => true,
            'downloads' => [
                [
                    'name' => 'Woo Single',
                    'file' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg'
                ]
            ],
            'categories' => [
                [
                    'id' => 11
                ],
                [
                    'id' => 13
                ]
            ],
            'images' => [
                [
                    'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg',
                    'position' => 0
                ]
            ]
        ],
        [
            'name' => 'New Premium Quality',
            'type' => 'simple',
            'regular_price' => '21.99',
            'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
            'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
            'categories' => [
                [
                    'id' => 9
                ],
                [
                    'id' => 14
                ]
            ],
            'images' => [
                [
                    'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg',
                    'position' => 0
                ],
                [
                    'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg',
                    'position' => 1
                ]
            ]
        ]
    ],
    'update' => [
        [
            'id' => 799,
            'default_attributes' => [
                [
                    'id' => 6,
                    'name' => 'Color,
                    'option' => 'Green'
                ],
                [
                    'id' => 0,
                    'name' => 'Size',
                    'option' => 'M'
                ]
            ]
        ]
    ],
    'delete' => [
        794
    ]
];

print_r($woocommerce->post('products/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "name": "Woo Single #1",
            "type": "simple",
            "regular_price": "21.99",
            "virtual": True,
            "downloadable": True,
            "downloads": [
                {
                    "name": "Woo Single",
                    "file": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg"
                }
            ],
            "categories": [
                {
                    "id": 11
                },
                {
                    "id": 13
                }
            ],
            "images": [
                {
                    "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg",
                    "position": 0
                }
            ]
        },
        {
            "name": "New Premium Quality",
            "type": "simple",
            "regular_price": "21.99",
            "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
            "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
            "categories": [
                {
                    "id": 9
                },
                {
                    "id": 14
                }
            ],
            "images": [
                {
                    "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
                    "position": 0
                },
                {
                    "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
                    "position": 1
                }
            ]
        }
    ],
    "update": [
        {
            "id": 799,
            "default_attributes": [
                {
                    "id": 6,
                    "name": "Color,
                    "option": "Green"
                },
                {
                    "id": 0,
                    "name": "Size",
                    "option": "M"
                }
            ]
        }
    ],
    "delete": [
        794
    ]
}

print(wcapi.post("products/batch", data).json())
```

```ruby
data = {
  create: [
    {
      name: "Woo Single #1",
      type: "simple",
      regular_price: "21.99",
      virtual: true,
      downloadable: true,
      downloads: [
        {
          name: "Woo Single",
          file: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg"
        }
      ],
      categories: [
        {
          id: 11
        },
        {
          id: 13
        }
      ],
      images: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg",
          position: 0
        }
      ]
    },
    {
      name: "New Premium Quality",
      type: "simple",
      regular_price: "21.99",
      description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
      short_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
      categories: [
        {
          id: 9
        },
        {
          id: 14
        }
      ],
      images: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg",
          position: 0
        },
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg",
          position: 1
        }
      ]
    }
  ],
  update: [
    {
      id: 799,
      default_attributes: [
        {
          id: 6,
          name: "Color,
          option: "Green"
        },
        {
          id: 0,
          name: "Size",
          option: "M"
        }
      ]
    }
  ],
  delete: [
    794
  ]
}

woocommerce.post("products/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 801,
      "name": "Woo Single #1",
      "slug": "woo-single-1-4",
      "permalink": "https://example.com/product/woo-single-1-4/",
      "date_created": "2017-03-23T17:35:43",
      "date_created_gmt": "2017-03-23T20:35:43",
      "date_modified": "2017-03-23T17:35:43",
      "date_modified_gmt": "2017-03-23T20:35:43",
      "type": "simple",
      "status": "publish",
      "featured": false,
      "catalog_visibility": "visible",
      "description": "",
      "short_description": "",
      "sku": "",
      "price": "21.99",
      "regular_price": "21.99",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>21.99</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": true,
      "downloadable": true,
      "downloads": [
        {
          "id": 0,
          "name": "Woo Single",
          "file": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg"
        }
      ],
      "download_limit": -1,
      "download_expiry": -1,
      "external_url": "",
      "button_text": "",
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_required": false,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": 0,
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        588,
        87,
        573,
        96,
        329
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "purchase_note": "",
      "categories": [
        {
          "id": 11,
          "name": "Music",
          "slug": "music"
        },
        {
          "id": 13,
          "name": "Singles",
          "slug": "singles"
        }
      ],
      "tags": [],
      "images": [
        {
          "id": 800,
          "date_created": "2017-03-23T14:35:43",
          "date_created_gmt": "2017-03-23T20:35:43",
          "date_modified": "2017-03-23T14:35:43",
          "date_modified_gmt": "2017-03-23T20:35:43",
          "src": "https://example.com/wp-content/uploads/2017/03/cd_4_angle.jpg",
          "name": "",
          "alt": "",
          "position": 0
        }
      ],
      "attributes": [],
      "default_attributes": [],
      "variations": [],
      "grouped_products": [],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/801"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products"
          }
        ]
      }
    },
    {
      "id": 804,
      "name": "New Premium Quality",
      "slug": "new-premium-quality",
      "permalink": "https://example.com/product/new-premium-quality/",
      "date_created": "2017-03-23T17:35:48",
      "date_created_gmt": "2017-03-23T20:35:48",
      "date_modified": "2017-03-23T17:35:48",
      "date_modified_gmt": "2017-03-23T20:35:48",
      "type": "simple",
      "status": "publish",
      "featured": false,
      "catalog_visibility": "visible",
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "sku": "",
      "price": "21.99",
      "regular_price": "21.99",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>21.99</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "external_url": "",
      "button_text": "",
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": 0,
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        458,
        56,
        99,
        34,
        378
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "purchase_note": "",
      "categories": [
        {
          "id": 9,
          "name": "Clothing",
          "slug": "clothing"
        },
        {
          "id": 14,
          "name": "T-shirts",
          "slug": "t-shirts"
        }
      ],
      "tags": [],
      "images": [
        {
          "id": 802,
          "date_created": "2017-03-23T14:35:47",
          "date_created_gmt": "2017-03-23T20:35:47",
          "date_modified": "2017-03-23T14:35:47",
          "date_modified_gmt": "2017-03-23T20:35:47",
          "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-5.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 803,
          "date_created": "2017-03-23T14:35:48",
          "date_created_gmt": "2017-03-23T20:35:48",
          "date_modified": "2017-03-23T14:35:48",
          "date_modified_gmt": "2017-03-23T20:35:48",
          "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-3.jpg",
          "name": "",
          "alt": "",
          "position": 1
        }
      ],
      "attributes": [],
      "default_attributes": [],
      "variations": [],
      "grouped_products": [],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/804"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 799,
      "name": "Ship Your Idea",
      "slug": "ship-your-idea-22",
      "permalink": "https://example.com/product/ship-your-idea-22/",
      "date_created": "2017-03-23T17:03:12",
      "date_created_gmt": "2017-03-23T20:03:12",
      "date_modified": "2017-03-23T17:03:12",
      "date_modified_gmt": "2017-03-23T20:03:12",
      "type": "variable",
      "status": "publish",
      "featured": false,
      "catalog_visibility": "visible",
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "sku": "",
      "price": "",
      "regular_price": "",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "price_html": "",
      "on_sale": false,
      "purchasable": false,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "external_url": "",
      "button_text": "",
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": 0,
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        414,
        40,
        34,
        463,
        15
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "purchase_note": "",
      "categories": [
        {
          "id": 9,
          "name": "Clothing",
          "slug": "clothing"
        },
        {
          "id": 14,
          "name": "T-shirts",
          "slug": "t-shirts"
        }
      ],
      "tags": [],
      "images": [
        {
          "id": 795,
          "date_created": "2017-03-23T14:03:08",
          "date_created_gmt": "2017-03-23T20:03:08",
          "date_modified": "2017-03-23T14:03:08",
          "date_modified_gmt": "2017-03-23T20:03:08",
          "src": "https://example.com/wp-content/uploads/2017/03/T_4_front-11.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 796,
          "date_created": "2017-03-23T14:03:09",
          "date_created_gmt": "2017-03-23T20:03:09",
          "date_modified": "2017-03-23T14:03:09",
          "date_modified_gmt": "2017-03-23T20:03:09",
          "src": "https://example.com/wp-content/uploads/2017/03/T_4_back-10.jpg",
          "name": "",
          "alt": "",
          "position": 1
        },
        {
          "id": 797,
          "date_created": "2017-03-23T14:03:10",
          "date_created_gmt": "2017-03-23T20:03:10",
          "date_modified": "2017-03-23T14:03:10",
          "date_modified_gmt": "2017-03-23T20:03:10",
          "src": "https://example.com/wp-content/uploads/2017/03/T_3_front-10.jpg",
          "name": "",
          "alt": "",
          "position": 2
        },
        {
          "id": 798,
          "date_created": "2017-03-23T14:03:11",
          "date_created_gmt": "2017-03-23T20:03:11",
          "date_modified": "2017-03-23T14:03:11",
          "date_modified_gmt": "2017-03-23T20:03:11",
          "src": "https://example.com/wp-content/uploads/2017/03/T_3_back-10.jpg",
          "name": "",
          "alt": "",
          "position": 3
        }
      ],
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "position": 0,
          "visible": false,
          "variation": true,
          "options": [
            "Black",
            "Green"
          ]
        },
        {
          "id": 0,
          "name": "Size",
          "position": 0,
          "visible": true,
          "variation": true,
          "options": [
            "S",
            "M"
          ]
        }
      ],
      "default_attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "green"
        },
        {
          "id": 0,
          "name": "Size",
          "option": "M"
        }
      ],
      "variations": [],
      "grouped_products": [],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/799"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 794,
      "name": "Premium Quality",
      "slug": "premium-quality-19",
      "permalink": "https://example.com/product/premium-quality-19/",
      "date_created": "2017-03-23T17:01:14",
      "date_created_gmt": "2017-03-23T20:01:14",
      "date_modified": "2017-03-23T17:01:14",
      "date_modified_gmt": "2017-03-23T20:01:14",
      "type": "simple",
      "status": "publish",
      "featured": false,
      "catalog_visibility": "visible",
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "sku": "",
      "price": "24.54",
      "regular_price": "24.54",
      "sale_price": "",
      "date_on_sale_from": null,
      "date_on_sale_from_gmt": null,
      "date_on_sale_to": null,
      "date_on_sale_to_gmt": null,
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;</span>24.54</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "external_url": "",
      "button_text": "",
      "tax_status": "taxable",
      "tax_class": "",
      "manage_stock": false,
      "stock_quantity": null,
      "in_stock": true,
      "backorders": "no",
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "weight": "",
      "dimensions": {
        "length": "",
        "width": "",
        "height": ""
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": 0,
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        369,
        56,
        378,
        31,
        22
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "purchase_note": "",
      "categories": [
        {
          "id": 9,
          "name": "Clothing",
          "slug": "clothing"
        },
        {
          "id": 14,
          "name": "T-shirts",
          "slug": "t-shirts"
        }
      ],
      "tags": [],
      "images": [
        {
          "id": 792,
          "date_created": "2017-03-23T14:01:13",
          "date_created_gmt": "2017-03-23T20:01:13",
          "date_modified": "2017-03-23T14:01:13",
          "date_modified_gmt": "2017-03-23T20:01:13",
          "src": "https://example.com/wp-content/uploads/2017/03/T_2_front-4.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 793,
          "date_created": "2017-03-23T14:01:14",
          "date_created_gmt": "2017-03-23T20:01:14",
          "date_modified": "2017-03-23T14:01:14",
          "date_modified_gmt": "2017-03-23T20:01:14",
          "src": "https://example.com/wp-content/uploads/2017/03/T_2_back-2.jpg",
          "name": "",
          "alt": "",
          "position": 1
        }
      ],
      "attributes": [],
      "default_attributes": [],
      "variations": [],
      "grouped_products": [],
      "menu_order": 0,
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/products/794"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/products"
          }
        ]
      }
    }
  ]
}
```

## Retrieve product reviews ##

This API lets you retrieve and view a specific product review by ID.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/reviews/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products/22/reviews/5 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/products/22/reviews/5', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/22/reviews/5')); ?>
```

```python
print(wcapi.get("products/products/22/reviews/5").json())
```

```ruby
woocommerce.get("products/products/22/reviews/5").parsed_response
```

> JSON response example:

```json
{
  "id": 5,
  "date_created": "2013-06-07T11:43:13",
  "date_created_gmt": "2013-06-07T11:43:13",
  "review": "Nice T-shirt, I got one in black. Goes with anything!",
  "rating": 4,
  "name": "James Koster",
  "email": "james@example.com",
  "verified": false,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/reviews/5"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/products/22/reviews"
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

## Product review properties ##

| Attribute          | Type      | Description                                                                                |
| ------------------ | --------- | ------------------------------------------------------------------------------------------ |
| `id`               | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>              |
| `review`           | string    | The content of the review. <i class="label label-info">mandatory</i>                       |
| `date_created`     | date-time | The date the review was created, in the site's timezone.                                   |
| `date_created_gmt` | date-time | The date the review was created, as GMT.                                                   |
| `rating`           | integer   | Review rating (0 to 5).                                                                    |
| `name`             | string    | Reviewer name. <i class="label label-info">mandatory</i>                                   |
| `email`            | string    | Reviewer email. <i class="label label-info">mandatory</i>                                  |
| `verified`         | boolean   | Shows if the reviewer bought the product or not. <i class="label label-info">read-only</i> |

## List all product reviews ##

This API lets you retrieve all reviews of a product.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/products/&lt;product_id&gt;/reviews</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/products/22/reviews \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/22/reviews', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/22/reviews')); ?>
```

```python
print(wcapi.get("products/22/reviews").json())
```

```ruby
woocommerce.get("products/22/reviews").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 5,
    "date_created": "2013-06-07T11:43:13",
    "date_created_gmt": "2013-06-07T11:43:13",
    "review": "Nice T-shirt, I got one in black. Goes with anything!",
    "rating": 4,
    "name": "James Koster",
    "email": "james@example.com",
    "verified": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews/5"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews"
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
    "id": 6,
    "date_created": "2013-06-07T11:55:15",
    "date_created_gmt": "2013-06-07T11:55:15",
    "review": "Very comfortable shirt, and I love the graphic!",
    "rating": 4,
    "name": "Cobus Bester",
    "email": "bester@example.com",
    "verified": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews/6"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews"
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
    "id": 7,
    "date_created": "2013-06-07T13:02:14",
    "date_created_gmt": "2013-06-07T13:02:14",
    "review": "Great T-shirt quality, Great Design and Great Service.",
    "rating": 5,
    "name": "Stuart",
    "email": "stuart@example.com",
    "verified": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews/7"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/22/reviews"
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
