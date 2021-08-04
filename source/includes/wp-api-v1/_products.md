# Products #

The products API allows you to create, view, update, and delete individual, or a batch, of products.

## Product properties ##

| Attribute            | Type      | Description                                                                                                                                                                                                                                                                                                                                                   |
|----------------------|-----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                 | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                 |
| `name`               | string    | Product name.                                                                                                                                                                                                                                                                                                                                                 |
| `slug`               | string    | Product slug.                                                                                                                                                                                                                                                                                                                                                 |
| `permalink`          | string    | Product URL. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                        |
| `date_created`       | date-time | The date the product was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                           |
| `date_modified`      | date-time | The date the product was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                     |
| `type`               | string    | Product type. Default is `simple`. Options (plugins may add new options): `simple`, `grouped`, `external`, `variable`.                                                                                                                                                                                                                                        |
| `status`             | string    | Product status (post status). Default is `publish`. Options (plugins may add new options): `draft`, `pending`, `private` and `publish`.                                                                                                                                                                                                                       |
| `featured`           | boolean   | Featured product. Default is `false`.                                                                                                                                                                                                                                                                                                                         |
| `catalog_visibility` | string    | Catalog visibility. Default is `visible`. Options: `visible` (Catalog and search), `catalog` (Only in catalog), `search` (Only in search) and `hidden` (Hidden from all).                                                                                                                                                                                     |
| `description`        | string    | Product description.                                                                                                                                                                                                                                                                                                                                          |
| `short_description`  | string    | Product short description.                                                                                                                                                                                                                                                                                                                                    |
| `sku`                | string    | Unique identifier.                                                                                                                                                                                                                                                                                                                                            |
| `price`              | string    | Current product price. This is setted from `regular_price` and `sale_price`. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                        |
| `regular_price`      | string    | Product regular price.                                                                                                                                                                                                                                                                                                                                        |
| `sale_price`         | string    | Product sale price.                                                                                                                                                                                                                                                                                                                                           |
| `date_on_sale_from`  | string    | Start date of sale price. Date in the `YYYY-MM-DD` format.                                                                                                                                                                                                                                                                                                    |
| `date_on_sale_to`    | string    | Sets the sale end date. Date in the `YYYY-MM-DD` format.                                                                                                                                                                                                                                                                                                      |
| `price_html`         | string    | Price formatted in HTML, e.g. `<del><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;&nbsp;3.00</span></span></del> <ins><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#36;&nbsp;2.00</span></span></ins>` <i class="label label-info">read-only</i> |
| `on_sale`            | boolean   | Shows if the product is on sale. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                    |
| `purchasable`        | boolean   | Shows if the product can be bought. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                 |
| `total_sales`        | integer   | Amount of sales. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                    |
| `virtual`            | boolean   | If the product is virtual. Virtual products are intangible and aren't shipped. Default is `false`.                                                                                                                                                                                                                                                            |
| `downloadable`       | boolean   | If the product is downloadable. Downloadable products give access to a file upon purchase. Default is `false`.                                                                                                                                                                                                                                                |
| `downloads`          | array     | List of downloadable files. See [Downloads properties](#download-properties).                                                                                                                                                                                                                                                                                 |
| `download_limit`     | integer   | Amount of times the product can be downloaded, the `-1` values means **unlimited re-downloads**. Default is `-1`.                                                                                                                                                                                                                                             |
| `download_expiry`    | integer   | Number of days that the customer has up to be able to download the product, the `-1` means that **downloads never expires**. Default is `-1`.                                                                                                                                                                                                                 |
| `download_type`      | string    | Download type, this controls the [schema](http://schema.org/) on the front-end. Default is `standard`. Options: `'standard'` (Standard Product), `application` (Application/Software) and `music` (Music).                                                                                                                                                    |
| `external_url`       | string    | Product external URL. Only for `external` products.                                                                                                                                                                                                                                                                                                           |
| `button_text`        | string    | Product external button text. Only for `external` products.                                                                                                                                                                                                                                                                                                   |
| `tax_status`         | string    | Tax status. Default is `taxable`. Options: `taxable`, `shipping` (Shipping only) and `none`.                                                                                                                                                                                                                                                                  |
| `tax_class`          | string    | Tax class.                                                                                                                                                                                                                                                                                                                                                    |
| `manage_stock`       | boolean   | Stock management at product level. Default is `false`.                                                                                                                                                                                                                                                                                                        |
| `stock_quantity`     | integer   | Stock quantity. If is a variable product this value will be used to control stock for all variations, unless you define stock at variation level.                                                                                                                                                                                                             |
| `in_stock`           | boolean   | Controls whether or not the product is listed as "in stock" or "out of stock" on the frontend. Default is `true`.                                                                                                                                                                                                                                             |
| `backorders`         | string    | If managing stock, this controls if backorders are allowed. If enabled, stock quantity can go below `0`. Default is `no`. Options are: `no` (Do not allow), `notify` (Allow, but notify customer), and `yes` (Allow).                                                                                                                                         |
| `backorders_allowed` | boolean   | Shows if backorders are allowed. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                    |
| `backordered`        | boolean   | Shows if a product is on backorder (if the product have the `stock_quantity` negative). <i class="label label-info">read-only</i>                                                                                                                                                                                                                             |
| `sold_individually`  | boolean   | Allow one item to be bought in a single order. Default is `false`.                                                                                                                                                                                                                                                                                            |
| `weight`             | string    | Product weight in decimal format.                                                                                                                                                                                                                                                                                                                             |
| `dimensions`         | object    | Product dimensions. See [Dimensions properties](#dimension-properties).                                                                                                                                                                                                                                                                                       |
| `shipping_required`  | boolean   | Shows if the product need to be shipped. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                            |
| `shipping_taxable`   | boolean   | Shows whether or not the product shipping is taxable. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                               |
| `shipping_class`     | string    | Shipping class slug. Shipping classes are used by certain shipping methods to group similar products.                                                                                                                                                                                                                                                         |
| `shipping_class_id`  | integer   | Shipping class ID. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                  |
| `reviews_allowed`    | boolean   | Allow reviews. Default is `true`.                                                                                                                                                                                                                                                                                                                             |
| `average_rating`     | string    | Reviews average rating. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                             |
| `rating_count`       | integer   | Amount of reviews that the product have. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                            |
| `related_ids`        | array     | List of related products IDs (`integer`). <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                           |
| `upsell_ids`         | array     | List of up-sell products IDs (`integer`). Up-sells are products which you recommend instead of the currently viewed product, for example, products that are more profitable or better quality or more expensive.                                                                                                                                              |
| `cross_sell_ids`     | array     | List of cross-sell products IDs. Cross-sells are products which you promote in the cart, based on the current product.                                                                                                                                                                                                                                        |
| `parent_id`          | integer   | Product parent ID (`post_parent`).                                                                                                                                                                                                                                                                                                                            |
| `purchase_note`      | string    | Optional note to send the customer after purchase.                                                                                                                                                                                                                                                                                                            |
| `categories`         | array     | List of categories. See [Categories properties](#category-properties).                                                                                                                                                                                                                                                                                        |
| `tags`               | array     | List of tags. See [Tags properties](#tag-properties).                                                                                                                                                                                                                                                                                                         |
| `images`             | array     | List of images. See [Images properties](#image-properties)                                                                                                                                                                                                                                                                                                    |
| `attributes`         | array     | List of attributes. See [Attributes properties](#attribute-properties).                                                                                                                                                                                                                                                                                       |
| `default_attributes` | array     | Defaults variation attributes, used only for variations and pre-selected attributes on the frontend. See [Default Attributes properties](#default-attribute-properties).                                                                                                                                                                                      |
| `variations`         | array     | List of variations. See [Variations properties](#variation-properties)                                                                                                                                                                                                                                                                                        |
| `grouped_products`   | array     | List of grouped products ID, only for `group` type products. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                        |
| `menu_order`         | integer   | Menu order, used to custom sort products.                                                                                                                                                                                                                                                                                                                     |

### Download properties ###

| Attribute | Type   | Description                                                          |
|-----------|--------|----------------------------------------------------------------------|
| `id`      | string | File ID.                                                             |
| `name`    | string | File name.                                                           |
| `file`    | string | File URL. In write-mode you can use this property to send new files. |

### Dimension properties ###

| Attribute | Type   | Description                       |
|-----------|--------|-----------------------------------|
| `length`  | string | Product length in decimal format. |
| `width`   | string | Product width in decimal format.  |
| `height`  | string | Product height in decimal format. |

### Category properties ###

| Attribute | Type    | Description                                              |
|-----------|---------|----------------------------------------------------------|
| `id`      | integer | Category ID.                                             |
| `name`    | string  | Category name. <i class="label label-info">read-only</i> |
| `slug`    | string  | Category slug. <i class="label label-info">read-only</i> |

### Tag properties ###

| Attribute | Type    | Description                                         |
|-----------|---------|-----------------------------------------------------|
| `id`      | integer | Tag ID.                                             |
| `name`    | string  | Tag name. <i class="label label-info">read-only</i> |
| `slug`    | string  | Tag slug. <i class="label label-info">read-only</i> |

### Image properties ###

| Attribute       | Type      | Description                                                                                             |
|-----------------|-----------|---------------------------------------------------------------------------------------------------------|
| `id`            | integer   | Image ID (attachment ID). In write-mode used to attach pre-existing images.                             |
| `date_created`  | date-time | The date the image was created, in the site's timezone. <i class="label label-info">read-only</i>       |
| `date_modified` | date-time | The date the image was last modified, in the site's timezone. <i class="label label-info">read-only</i> |
| `src`           | string    | Image URL. In write-mode used to upload new images.                                                     |
| `name`          | string    | Image name.                                                                                             |
| `alt`           | string    | Image alternative text.                                                                                 |
| `position`      | integer   | Image position. `0` means that the image is featured.                                                   |

### Attribute properties ###

| Attribute   | Type    | Description                                                                                                       |
|-------------|---------|-------------------------------------------------------------------------------------------------------------------|
| `id`        | integer | Attribute ID (required if is a global attribute).                                                                 |
| `name`      | string  | Attribute name (required if is a non-global attribute).                                                           |
| `position`  | integer | Attribute position.                                                                                               |
| `visible`   | boolean | Define if the attribute is visible on the "Additional Information" tab in the product's page. Default is `false`. |
| `variation` | boolean | Define if the attribute can be used as variation. Default is `false`.                                             |
| `options`   | array   | List of available term names of the attribute.                                                                    |

### Default attribute properties ###

| Attribute | Type    | Description                                             |
|-----------|---------|---------------------------------------------------------|
| `id`      | integer | Attribute ID (required if is a global attribute).       |
| `name`    | string  | Attribute name (required if is a non-global attribute). |
| `option`  | string  | Selected attribute term name.                           |

### Variation properties ###

| Attribute            | Type      | Description                                                                                                                                                                                                           |
|----------------------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                 | integer   | Variation ID. <i class="label label-info">read-only</i>                                                                                                                                                               |
| `date_created`       | date-time | The date the variation was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                 |
| `date_modified`      | date-time | The date the variation was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                           |
| `permalink`          | string    | Variation URL. <i class="label label-info">read-only</i>                                                                                                                                                              |
| `sku`                | string    | Unique identifier.                                                                                                                                                                                                    |
| `price`              | string    | Current variation price. This is setted from `regular_price` and `sale_price`. <i class="label label-info">read-only</i>                                                                                              |
| `regular_price`      | string    | Variation regular price.                                                                                                                                                                                              |
| `sale_price`         | string    | Variation sale price.                                                                                                                                                                                                 |
| `date_on_sale_from`  | string    | Start date of sale price. Date in the `YYYY-MM-DD` format.                                                                                                                                                            |
| `date_on_sale_to`    | string    | Start date of sale price. Date in the `YYYY-MM-DD` format.                                                                                                                                                            |
| `on_sale`            | boolean   | Shows if the variation is on sale. <i class="label label-info">read-only</i>                                                                                                                                          |
| `purchasable`        | boolean   | Shows if the variation can be bought. <i class="label label-info">read-only</i>                                                                                                                                       |
| `visible`            | boolean   | If the variation is visible.                                                                                                                                                                                          |
| `virtual`            | boolean   | If the variation is virtual. Virtual variations are intangible and aren't shipped. Default is `false`.                                                                                                                |
| `downloadable`       | boolean   | If the variation is downloadable. Downloadable variations give access to a file upon purchase. Default is `false`.                                                                                                    |
| `downloads`          | array     | List of downloadable files. See [Downloads properties](#download-properties).                                                                                                                                         |
| `download_limit`     | integer   | Amount of times the variation can be downloaded, the `-1` values means **unlimited re-downloads**. Default is `-1`.                                                                                                   |
| `download_expiry`    | integer   | Number of days that the customer has up to be able to download the variation, the `-1` means that **downloads never expires**. Default is `-1`.                                                                       |
| `tax_status`         | string    | Tax status. Default is `taxable`. Options: `taxable`, `shipping` (Shipping only) and `none`.                                                                                                                          |
| `tax_class`          | string    | Tax class.                                                                                                                                                                                                            |
| `manage_stock`       | boolean   | Stock management at variation level. Default is `false`.                                                                                                                                                              |
| `stock_quantity`     | integer   | Stock quantity. If is a variable variation this value will be used to control stock for all variations, unless you define stock at variation level.                                                                   |
| `in_stock`           | boolean   | Controls whether or not the variation is listed as "in stock" or "out of stock" on the frontend. Default is `true`.                                                                                                   |
| `backorders`         | string    | If managing stock, this controls if backorders are allowed. If enabled, stock quantity can go below `0`. Default is `no`. Options are: `no` (Do not allow), `notify` (Allow, but notify customer), and `yes` (Allow). |
| `backorders_allowed` | boolean   | Shows if backorders are allowed." <i class="label label-info">read-only</i>                                                                                                                                           |
| `backordered`        | boolean   | Shows if a variation is on backorder (if the variation have the `stock_quantity` negative). <i class="label label-info">read-only</i>                                                                                 |
| `weight`             | string    | Variation weight in decimal format.                                                                                                                                                                                   |
| `dimensions`         | object    | Variation dimensions. See [Dimensions properties](#dimension-properties).                                                                                                                                             |
| `shipping_class`     | string    | Shipping class slug. Shipping classes are used by certain shipping methods to group similar products.                                                                                                                 |
| `shipping_class_id`  | integer   | Shipping class ID. <i class="label label-info">read-only</i>                                                                                                                                                          |
| `image`              | array     | Variation featured image. Only position `0` will be used. See [Images properties](#image-properties).                                                                                                                 |
| `attributes`         | array     | List of variation attributes. See [Variation Attributes properties](#variation-attribute-properties)                                                                                                                  |

### Variation attribute properties ###

| Attribute | Type    | Description                                             |
|-----------|---------|---------------------------------------------------------|
| `id`      | integer | Attribute ID (required if is a global attribute).       |
| `name`    | string  | Attribute name (required if is a non-global attribute). |
| `option`  | string  | Selected attribute term name.                           |

## Create a product ##

This API helps you to create a new product.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/products</h6>
	</div>
</div>

> Example of how to create a `simple` product:

```shell
curl -X POST https://example.com/wp-json/wc/v1/products \
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
const data = {
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
};

WooCommerce.post("products", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
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
  "id": 162,
  "name": "Premium Quality",
  "slug": "premium-quality-3",
  "permalink": "https://example.com/product/premium-quality-3/",
  "date_created": "2016-05-31T23:40:07",
  "date_modified": "2016-05-31T23:40:07",
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
  "date_on_sale_from": "",
  "date_on_sale_to": "",
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>21,99</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "download_type": "standard",
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
  "related_ids": [],
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
      "id": 163,
      "date_created": "2016-05-31T23:40:07",
      "date_modified": "2016-05-31T23:40:07",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 164,
      "date_created": "2016-05-31T23:40:10",
      "date_modified": "2016-05-31T23:40:10",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products"
      }
    ]
  }
}
```

> Example of how to create a `variable` product with global and non-global attributes:

```shell
curl -X POST https://example.com/wp-json/wc/v1/products \
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
  ],
  "variations": [
    {
      "regular_price": "19.99",
      "image": [
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
          "position": 0
        }
      ],
      "attributes": [
        {
          "id": 6,
          "option": "black"
        },
        {
          "name": "Size",
          "option": "S"
        }
      ]
    },
    {
      "regular_price": "19.99",
      "image": [
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
          "position": 0
        }
      ],
      "attributes": [
        {
          "id": 6,
          "option": "green"
        },
        {
          "name": "Size",
          "option": "M"
        }
      ]
    }
  ]
}'
```

```javascript
const data = {
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
      visible: true,
      variation: true,
      options: [
        "Black",
        "Green"
      ]
    }
    {
      name: "Size",
      position: 0,
      visible: false,
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
  ],
  variations: [
    {
      regular_price: "19.99",
      image: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
          position: 0
        }
      ],
      attributes: [
        {
          id: 6,
          option: "black"
        },
        {
          name: "Size",
          option: "S"
        }
      ]
    },
    {
      regular_price: "19.99",
      image: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
          position: 0
        }
      ],
      attributes: [
        {
          id: 6,
          option: "green"
        },
        {
          name: "Size",
          option: "M"
        }
      ]
    }
  ]
};

WooCommerce.post("products", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
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
    ],
    'variations' => [
        [
            'regular_price' => '19.99',
            'image' => [
                [
                    'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg',
                    'position' => 0
                ]
            ],
            'attributes' => [
                [
                    'id' => 6,
                    'option' => 'black'
                ],
                [
                    'name' => 'Size',
                    'option' => 'S'
                ]
            ]
        ],
        [
            'regular_price' => '19.99',
            'image' => [
                [
                    'src' => 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg',
                    'position' => 0
                ]
            ],
            'attributes' => [
                [
                    'id' => 6,
                    'option' => 'green'
                ],
                [
                    'name' => 'Size',
                    'option' => 'M'
                ]
            ]
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
    ],
    "variations": [
        {
            "regular_price": "19.99",
            "image": [
                {
                    "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
                    "position": 0
                }
            ],
            "attributes": [
                {
                    "id": 6,
                    "option": "black"
                },
                {
                    "name": "Size",
                    "option": "S"
                }
            ]
        },
        {
            "regular_price": "19.99",
            "image": [
                {
                    "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
                    "position": 0
                }
            ],
            "attributes": [
                {
                    "id": 6,
                    "option": "green"
                },
                {
                    "name": "Size",
                    "option": "M"
                }
            ]
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
  ],
  variations: [
    {
      regular_price: "19.99",
      image: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg",
          position: 0
        }
      ],
      attributes: [
        {
          id: 6,
          option: "black"
        },
        {
          name: "Size",
          option: "S"
        }
      ]
    },
    {
      regular_price: "19.99",
      image: [
        {
          src: "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg",
          position: 0
        }
      ],
      attributes: [
        {
          id: 6,
          option: "green"
        },
        {
          name: "Size",
          option: "M"
        }
      ]
    }
  ]
}

woocommerce.post("products", data).parsed_response
```

> JSON response example:

```json
{
  "id": 165,
  "name": "Ship Your Idea",
  "slug": "ship-your-idea-4",
  "permalink": "https://example.com/product/ship-your-idea-4/",
  "date_created": "2016-05-31T23:50:56",
  "date_modified": "2016-06-02T23:11:41",
  "type": "variable",
  "status": "publish",
  "featured": false,
  "catalog_visibility": "visible",
  "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
  "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
  "sku": "",
  "price": "19.99",
  "regular_price": "",
  "sale_price": "",
  "date_on_sale_from": "",
  "date_on_sale_to": "",
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>19,99</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "download_type": "standard",
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
    34,
    37,
    187,
    205,
    31
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
      "id": 166,
      "date_created": "2016-05-31T23:50:57",
      "date_modified": "2016-05-31T23:50:57",
      "src": "https://example.com/wp-content/uploads/2016/05/T_4_front.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 167,
      "date_created": "2016-05-31T23:50:57",
      "date_modified": "2016-05-31T23:50:57",
      "src": "https://example.com/wp-content/uploads/2016/05/T_4_back.jpg",
      "name": "",
      "alt": "",
      "position": 1
    },
    {
      "id": 168,
      "date_created": "2016-05-31T23:50:58",
      "date_modified": "2016-05-31T23:50:58",
      "src": "https://example.com/wp-content/uploads/2016/05/T_3_front.jpg",
      "name": "",
      "alt": "",
      "position": 2
    },
    {
      "id": 169,
      "date_created": "2016-05-31T23:50:59",
      "date_modified": "2016-05-31T23:50:59",
      "src": "https://example.com/wp-content/uploads/2016/05/T_3_back.jpg",
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
      "position": 1,
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
      "name": "size",
      "option": "S"
    }
  ],
  "variations": [
    {
      "id": 170,
      "date_created": "2016-05-31T23:50:56",
      "date_modified": "2016-06-02T23:11:41",
      "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=black&attribute_size=S",
      "sku": "",
      "price": "19.99",
      "regular_price": "19.99",
      "sale_price": "",
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "on_sale": false,
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
      "image": [
        {
          "id": 171,
          "date_created": "2016-05-31T23:51:01",
          "date_modified": "2016-05-31T23:51:01",
          "src": "https://example.com/wp-content/uploads/2016/05/T_4_front-1.jpg",
          "name": "",
          "alt": "",
          "position": 0
        }
      ],
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "black"
        },
        {
          "id": 0,
          "name": "size",
          "option": "S"
        }
      ]
    },
    {
      "id": 172,
      "date_created": "2016-05-31T23:50:56",
      "date_modified": "2016-06-02T23:11:41",
      "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=green&attribute_size=M",
      "sku": "",
      "price": "19.99",
      "regular_price": "19.99",
      "sale_price": "",
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "on_sale": false,
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
      "image": [
        {
          "id": 173,
          "date_created": "2016-05-31T23:51:03",
          "date_modified": "2016-05-31T23:51:03",
          "src": "https://example.com/wp-content/uploads/2016/05/T_3_front-1.jpg",
          "name": "",
          "alt": "",
          "position": 0
        }
      ],
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "option": "green"
        },
        {
          "id": 0,
          "name": "size",
          "option": "M"
        }
      ]
    }
  ],
  "grouped_products": [],
  "menu_order": 0,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/165"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products"
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
		<h6>/wp-json/wc/v1/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/162 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("products/162")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('products/162')); ?>
```

```python
print(wcapi.get("products/162").json())
```

```ruby
woocommerce.get("products/162").parsed_response
```

> JSON response example:

```json
{
  "id": 162,
  "name": "Premium Quality",
  "slug": "premium-quality-3",
  "permalink": "https://example.com/product/premium-quality-3/",
  "date_created": "2016-05-31T23:40:07",
  "date_modified": "2016-05-31T23:40:07",
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
  "date_on_sale_from": "",
  "date_on_sale_to": "",
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>21,99</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "download_type": "standard",
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
  "related_ids": [],
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
      "id": 163,
      "date_created": "2016-05-31T23:40:07",
      "date_modified": "2016-05-31T23:40:07",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 164,
      "date_created": "2016-05-31T23:40:10",
      "date_modified": "2016-05-31T23:40:10",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products"
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
		<h6>/wp-json/wc/v1/products</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("products")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
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
    "id": 165,
    "name": "Ship Your Idea",
    "slug": "ship-your-idea-4",
    "permalink": "https://example.com/product/ship-your-idea-4/",
    "date_created": "2016-05-31T23:50:56",
    "date_modified": "2016-06-02T23:11:41",
    "type": "variable",
    "status": "publish",
    "featured": false,
    "catalog_visibility": "visible",
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "sku": "",
    "price": "19.99",
    "regular_price": "",
    "sale_price": "",
    "date_on_sale_from": "",
    "date_on_sale_to": "",
    "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>19,99</span>",
    "on_sale": false,
    "purchasable": true,
    "total_sales": 0,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "download_type": "standard",
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
      34,
      37,
      187,
      205,
      31
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
        "id": 166,
        "date_created": "2016-05-31T23:50:57",
        "date_modified": "2016-05-31T23:50:57",
        "src": "https://example.com/wp-content/uploads/2016/05/T_4_front.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 167,
        "date_created": "2016-05-31T23:50:57",
        "date_modified": "2016-05-31T23:50:57",
        "src": "https://example.com/wp-content/uploads/2016/05/T_4_back.jpg",
        "name": "",
        "alt": "",
        "position": 1
      },
      {
        "id": 168,
        "date_created": "2016-05-31T23:50:58",
        "date_modified": "2016-05-31T23:50:58",
        "src": "https://example.com/wp-content/uploads/2016/05/T_3_front.jpg",
        "name": "",
        "alt": "",
        "position": 2
      },
      {
        "id": 169,
        "date_created": "2016-05-31T23:50:59",
        "date_modified": "2016-05-31T23:50:59",
        "src": "https://example.com/wp-content/uploads/2016/05/T_3_back.jpg",
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
        "position": 1,
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
        "name": "size",
        "option": "S"
      }
    ],
    "variations": [
      {
        "id": 170,
        "date_created": "2016-05-31T23:50:56",
        "date_modified": "2016-06-02T23:11:41",
        "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=black&attribute_size=S",
        "sku": "",
        "price": "19.99",
        "regular_price": "19.99",
        "sale_price": "",
        "date_on_sale_from": "",
        "date_on_sale_to": "",
        "on_sale": false,
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
        "image": [
          {
            "id": 171,
            "date_created": "2016-05-31T23:51:01",
            "date_modified": "2016-05-31T23:51:01",
            "src": "https://example.com/wp-content/uploads/2016/05/T_4_front-1.jpg",
            "name": "",
            "alt": "",
            "position": 0
          }
        ],
        "attributes": [
          {
            "id": 6,
            "name": "Color",
            "option": "black"
          },
          {
            "id": 0,
            "name": "size",
            "option": "S"
          }
        ]
      },
      {
        "id": 172,
        "date_created": "2016-05-31T23:50:56",
        "date_modified": "2016-06-02T23:11:41",
        "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=green&attribute_size=M",
        "sku": "",
        "price": "19.99",
        "regular_price": "19.99",
        "sale_price": "",
        "date_on_sale_from": "",
        "date_on_sale_to": "",
        "on_sale": false,
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
        "image": [
          {
            "id": 173,
            "date_created": "2016-05-31T23:51:03",
            "date_modified": "2016-05-31T23:51:03",
            "src": "https://example.com/wp-content/uploads/2016/05/T_3_front-1.jpg",
            "name": "",
            "alt": "",
            "position": 0
          }
        ],
        "attributes": [
          {
            "id": 6,
            "name": "Color",
            "option": "green"
          },
          {
            "id": 0,
            "name": "size",
            "option": "M"
          }
        ]
      }
    ],
    "grouped_products": [],
    "menu_order": 0,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/165"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products"
        }
      ]
    }
  },
  {
    "id": 162,
    "name": "Premium Quality",
    "slug": "premium-quality-3",
    "permalink": "https://example.com/product/premium-quality-3/",
    "date_created": "2016-05-31T23:40:07",
    "date_modified": "2016-05-31T23:40:07",
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
    "date_on_sale_from": "",
    "date_on_sale_to": "",
    "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>21,99</span>",
    "on_sale": false,
    "purchasable": true,
    "total_sales": 0,
    "virtual": false,
    "downloadable": false,
    "downloads": [],
    "download_limit": -1,
    "download_expiry": -1,
    "download_type": "standard",
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
    "related_ids": [],
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
        "id": 163,
        "date_created": "2016-05-31T23:40:07",
        "date_modified": "2016-05-31T23:40:07",
        "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
        "name": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 164,
        "date_created": "2016-05-31T23:40:10",
        "date_modified": "2016-05-31T23:40:10",
        "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter        | Type    | Description                                                                                                                                     |
|------------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`        | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.                                       |
| `page`           | integer | Current page of the collection.                                                                                                                 |
| `per_page`       | integer | Maximum number of items to be returned in result set.                                                                                           |
| `search`         | string  | Limit results to those matching a string.                                                                                                       |
| `after`          | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                     |
| `before`         | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                    |
| `dates_are_gmt`  | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                                        |
| `exclude`        | string  | Ensure result set excludes specific ids.                                                                                                        |
| `include`        | string  | Limit result set to specific ids.                                                                                                               |
| `offset`         | integer | Offset the result set by a specific number of items.                                                                                            |
| `order`          | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                                                      |
| `orderby`        | string  | Sort collection by object attribute. Default is `date`, Options: `date`, `id`, `include`, `title` and `slug`.                                   |
| `slug`           | string  | Limit result set to products with a specific slug.                                                                                              |
| `status`         | string  | Limit result set to products assigned a specific status. Default is `any`. Options: `any`, `draft`, `pending`, `private` and `publish`.         |
| `customer`       | string  | Limit result set to orders assigned a specific customer.                                                                                        |
| `category`       | string  | Limit result set to products assigned a specific category, e.g. `?category=9,14`.                                                               |
| `tag`            | string  | Limit result set to products assigned a specific tag, e.g. `?tag=9,14`.                                                                         |
| `shipping_class` | string  | Limit result set to products assigned a specific shipping class, e.g. `?shipping_class=9,14`.                                                   |
| `attribute`      | string  | Limit result set to products with a specific attribute, e.g. `?attribute=pa_color`.                                                             |
| `attribute_term` | string  | Limit result set to products with a specific attribute term (required an assigned `attribute`), e.g. `?attribute=pa_color&attribute_term=9,14`. |
| `sku`            | string  | Limit result set to products with a specific SKU.                                                                                               |

## Update a product ##

This API lets you make changes to a product.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v1/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v1/products/162 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "regular_price": "24.54"
}'
```

```javascript
const data = {
  regular_price: "24.54"
};

WooCommerce.put("products/162", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php
$data = [
    'regular_price' => '24.54'
];

print_r($woocommerce->put('products/162', $data));
?>
```

```python
data = {
    "regular_price": "24.54"
}

print(wcapi.put("products/162", data).json())
```

```ruby
data = {
  regular_price: "24.54"
}

woocommerce.put("products/162", data).parsed_response
```

> JSON response example:

```json
{
  "id": 162,
  "name": "Premium Quality",
  "slug": "premium-quality-3",
  "permalink": "https://example.com/product/premium-quality-3/",
  "date_created": "2016-05-31T23:40:07",
  "date_modified": "2016-05-31T23:40:07",
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
  "date_on_sale_from": "",
  "date_on_sale_to": "",
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>24,54</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "download_type": "standard",
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
  "related_ids": [],
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
      "id": 163,
      "date_created": "2016-05-31T23:40:07",
      "date_modified": "2016-05-31T23:40:07",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 164,
      "date_created": "2016-05-31T23:40:10",
      "date_modified": "2016-05-31T23:40:10",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products"
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
		<h6>/wp-json/wc/v1/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/products/162?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("products/162", {
  force: true
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->delete('products/162', ['force' => true])); ?>
```

```python
print(wcapi.delete("products/162", params={"force": True}).json())
```

```ruby
woocommerce.delete("products/162", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 162,
  "name": "Premium Quality",
  "slug": "premium-quality-3",
  "permalink": "https://example.com/product/premium-quality-3/",
  "date_created": "2016-05-31T23:40:07",
  "date_modified": "2016-05-31T23:40:07",
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
  "date_on_sale_from": "",
  "date_on_sale_to": "",
  "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>24,54</span>",
  "on_sale": false,
  "purchasable": true,
  "total_sales": 0,
  "virtual": false,
  "downloadable": false,
  "downloads": [],
  "download_limit": -1,
  "download_expiry": -1,
  "download_type": "standard",
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
  "related_ids": [],
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
      "id": 163,
      "date_created": "2016-05-31T23:40:07",
      "date_modified": "2016-05-31T23:40:07",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
      "name": "",
      "alt": "",
      "position": 0
    },
    {
      "id": 164,
      "date_created": "2016-05-31T23:40:10",
      "date_modified": "2016-05-31T23:40:10",
      "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter | Type   | Description                                                               |
|-----------|--------|---------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the product, Default is `false`. |

## Batch update products ##

This API helps you to batch create, update and delete multiple products.

<aside class="notice">
Note: By default it's limited to up to 100 objects to be created, updated or deleted. 
</aside>

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/products/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/products/batch \
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
      "id": 165,
      "variations": [
        {
          "id": 170,
          "regular_price": "29.99"
        },
        {
          "id": 172,
          "regular_price": "29.99"
        }
      ]
    }
  ],
  "delete": [
    162
  ]
}'
```

```javascript
const data = {
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
      id: 165,
      variations: [
        {
          id: 170,
          regular_price: "29.99"
        },
        {
          id: 172,
          regular_price: "29.99"
        }
      ]
    }
  ],
  delete: [
    162
  ]
};

WooCommerce.post("products/batch", data)
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
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
            'id' => 165,
            'variations' => [
                [
                    'id' => 170,
                    'regular_price' => '29.99'
                ],
                [
                    'id' => 172,
                    'regular_price' => '29.99'
                ]
            ]
        ]
    ],
    'delete' => [
        162
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
            "id": 165,
            "variations": [
                {
                    "id": 170,
                    "regular_price": "29.99"
                },
                {
                    "id": 172,
                    "regular_price": "29.99"
                }
            ]
        }
    ],
    "delete": [
        162
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
      id: 165,
      variations: [
        {
          id: 170,
          regular_price: "29.99"
        },
        {
          id: 172,
          regular_price: "29.99"
        }
      ]
    }
  ],
  delete: [
    162
  ]
}

woocommerce.post("products/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 174,
      "name": "Woo Single #1",
      "slug": "woo-single-1-2",
      "permalink": "https://example.com/product/woo-single-1-2/",
      "date_created": "2016-06-01T00:21:30",
      "date_modified": "2016-06-01T00:21:30",
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
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>21,99</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": true,
      "downloadable": true,
      "downloads": [
        {
          "id": "7b5a304f737cfa35dc527c9e790399bf",
          "name": "Woo Single",
          "file": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg"
        }
      ],
      "download_limit": -1,
      "download_expiry": -1,
      "download_type": "standard",
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
      "related_ids": [],
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
          "id": 175,
          "date_created": "2016-06-01T00:21:31",
          "date_modified": "2016-06-01T00:21:31",
          "src": "https://example.com/wp-content/uploads/2016/05/cd_4_angle.jpg",
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
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/products/174"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/products"
          }
        ]
      }
    },
    {
      "id": 176,
      "name": "New Premium Quality",
      "slug": "new-premium-quality",
      "permalink": "https://example.com/product/new-premium-quality/",
      "date_created": "2016-06-01T00:21:33",
      "date_modified": "2016-06-01T00:21:33",
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
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>21,99</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "download_type": "standard",
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
      "related_ids": [],
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
          "id": 177,
          "date_created": "2016-06-01T00:21:33",
          "date_modified": "2016-06-01T00:21:33",
          "src": "https://example.com/wp-content/uploads/2016/05/T_2_front-1.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 178,
          "date_created": "2016-06-01T00:21:34",
          "date_modified": "2016-06-01T00:21:34",
          "src": "https://example.com/wp-content/uploads/2016/05/T_2_back-1.jpg",
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
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/products/176"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/products"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 165,
      "name": "Ship Your Idea",
      "slug": "ship-your-idea-4",
      "permalink": "https://example.com/product/ship-your-idea-4/",
      "date_created": "2016-05-31T23:50:56",
      "date_modified": "2016-06-02T23:11:41",
      "type": "variable",
      "status": "publish",
      "featured": false,
      "catalog_visibility": "visible",
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "sku": "",
      "price": "29.99",
      "regular_price": "",
      "sale_price": "",
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>29,99</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "download_type": "standard",
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
        34,
        37,
        187,
        205,
        31
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
          "id": 166,
          "date_created": "2016-05-31T23:50:57",
          "date_modified": "2016-05-31T23:50:57",
          "src": "https://example.com/wp-content/uploads/2016/05/T_4_front.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 167,
          "date_created": "2016-05-31T23:50:57",
          "date_modified": "2016-05-31T23:50:57",
          "src": "https://example.com/wp-content/uploads/2016/05/T_4_back.jpg",
          "name": "",
          "alt": "",
          "position": 1
        },
        {
          "id": 168,
          "date_created": "2016-05-31T23:50:58",
          "date_modified": "2016-05-31T23:50:58",
          "src": "https://example.com/wp-content/uploads/2016/05/T_3_front.jpg",
          "name": "",
          "alt": "",
          "position": 2
        },
        {
          "id": 169,
          "date_created": "2016-05-31T23:50:59",
          "date_modified": "2016-05-31T23:50:59",
          "src": "https://example.com/wp-content/uploads/2016/05/T_3_back.jpg",
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
          "position": 1,
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
          "name": "size",
          "option": "S"
        }
      ],
      "variations": [
        {
          "id": 170,
          "date_created": "2016-05-31T23:50:56",
          "date_modified": "2016-06-02T23:11:41",
          "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=black&attribute_size=S",
          "sku": "",
          "price": "29.99",
          "regular_price": "29.99",
          "sale_price": "",
          "date_on_sale_from": "",
          "date_on_sale_to": "",
          "on_sale": false,
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
          "image": [
            {
              "id": 171,
              "date_created": "2016-05-31T23:51:01",
              "date_modified": "2016-05-31T23:51:01",
              "src": "https://example.com/wp-content/uploads/2016/05/T_4_front-1.jpg",
              "name": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "id": 6,
              "name": "Color",
              "option": "black"
            },
            {
              "id": 0,
              "name": "size",
              "option": "S"
            }
          ]
        },
        {
          "id": 172,
          "date_created": "2016-05-31T23:50:56",
          "date_modified": "2016-06-02T23:11:41",
          "permalink": "https://example.com/product/ship-your-idea-4/?attribute_pa_color=green&attribute_size=M",
          "sku": "",
          "price": "29.99",
          "regular_price": "29.99",
          "sale_price": "",
          "date_on_sale_from": "",
          "date_on_sale_to": "",
          "on_sale": false,
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
          "image": [
            {
              "id": 173,
              "date_created": "2016-05-31T23:51:03",
              "date_modified": "2016-05-31T23:51:03",
              "src": "https://example.com/wp-content/uploads/2016/05/T_3_front-1.jpg",
              "name": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "id": 6,
              "name": "Color",
              "option": "green"
            },
            {
              "id": 0,
              "name": "size",
              "option": "M"
            }
          ]
        }
      ],
      "grouped_products": [],
      "menu_order": 0,
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/products/165"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/products"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 162,
      "name": "Premium Quality",
      "slug": "premium-quality-3",
      "permalink": "https://example.com/product/premium-quality-3/",
      "date_created": "2016-05-31T23:40:07",
      "date_modified": "2016-06-01T00:13:45",
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
      "date_on_sale_from": "",
      "date_on_sale_to": "",
      "price_html": "<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">&#82;&#36;</span>24,54</span>",
      "on_sale": false,
      "purchasable": true,
      "total_sales": 0,
      "virtual": false,
      "downloadable": false,
      "downloads": [],
      "download_limit": -1,
      "download_expiry": -1,
      "download_type": "standard",
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
      "related_ids": [],
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
          "id": 163,
          "date_created": "2016-05-31T23:40:07",
          "date_modified": "2016-05-31T23:40:07",
          "src": "https://example.com/wp-content/uploads/2016/05/T_2_front.jpg",
          "name": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 164,
          "date_created": "2016-05-31T23:40:10",
          "date_modified": "2016-05-31T23:40:10",
          "src": "https://example.com/wp-content/uploads/2016/05/T_2_back.jpg",
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
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/products/162"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/products"
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
		<h6>/wp-json/wc/v1/products/&lt;product_id&gt;/reviews/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/162/reviews/9 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("products/162/reviews/9")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('products/162')); ?>
```

```python
print(wcapi.get("products/162/reviews/9").json())
```

```ruby
woocommerce.get("products/162/reviews/9").parsed_response
```

> JSON response example:

```json
{
  "id": 9,
  "date_created": "2015-05-07T13:01:25",
  "review": "This will go great with my Hoodie that I ordered a few weeks ago.",
  "rating": 5,
  "name": "Stuart",
  "email": "stuart@example.com",
  "verified": false,
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162/reviews/9"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162/reviews"
      }
    ],
    "up": [
      {
        "href": "https://example.com/wp-json/wc/v1/products/162"
      }
    ]
  }
}
```

### Product review properties ###

| Attribute      | Type    | Description                                                                                        |
|----------------|---------|----------------------------------------------------------------------------------------------------|
| `id`           | integer | Unique identifier for the resource. <i class="label label-info">read-only</i>                      |
| `date_created` | string  | The date the review was created, in the site's timezone. <i class="label label-info">read-only</i> |
| `rating`       | integer | Review rating (0 to 5). <i class="label label-info">read-only</i>                                  |
| `name`         | string  | Reviewer name. <i class="label label-info">read-only</i>                                           |
| `email`        | string  | Reviewer email. <i class="label label-info">read-only</i>                                          |
| `verified`     | boolean | Shows if the reviewer bought the product or not. <i class="label label-info">read-only</i>         |

## List all product reviews ##

This API lets you retrieve all reviews of a product.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/products/&lt;product_id&gt;/reviews</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/products/162/reviews \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("products/162/reviews")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('products/162/reviews')); ?>
```

```python
print(wcapi.get("products/162/reviews").json())
```

```ruby
woocommerce.get("products/162/reviews").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 9,
    "date_created": "2015-05-07T13:01:25",
    "review": "This will go great with my Hoodie that I ordered a few weeks ago.",
    "rating": 5,
    "name": "Stuart",
    "email": "stuart@example.com",
    "verified": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162/reviews/9"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162/reviews"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162"
        }
      ]
    }
  },
  {
    "id": 10,
    "date_created": "2015-05-07T15:49:53",
    "review": "Love this shirt! The ninja near and dear to my heart. &lt;3",
    "rating": 5,
    "name": "Maria",
    "email": "maria@example.com",
    "verified": false,
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162/reviews/10"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162/reviews"
        }
      ],
      "up": [
        {
          "href": "https://example.com/wp-json/wc/v1/products/162"
        }
      ]
    }
  }
]
```
