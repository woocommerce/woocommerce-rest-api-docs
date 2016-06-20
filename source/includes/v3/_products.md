# Products #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate products.

## Products Properties ##

|            Attribute            |   Type  |                                                                                                                           Description                                                                                                                            |
|---------------------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `title`                         | string  | Product name                                                                                                                                                                                                                                                     |
| `id`                            | integer | Product ID (post ID) <i class="label label-info">read-only</i>                                                                                                                                                                                                   |
| `name`                          | string  | Product slug <i class="label label-info">edit-only</i>                                                                                                                                                                                                           |
| `created_at`                    | string  | UTC DateTime when the product was created <i class="label label-info">read-only</i>                                                                                                                                                                              |
| `updated_at`                    | string  | UTC DateTime when the product was last updated <i class="label label-info">read-only</i>                                                                                                                                                                         |
| `type`                          | string  | Product type. By default in WooCommerce the following types are available: `simple`, `grouped`, `external`, `variable`. Default is `simple`                                                                                                                      |
| `status`                        | string  | Product status (post status). Default is `publish`                                                                                                                                                                                                               |
| `downloadable`                  | boolean | If the product is downloadable or not. Downloadable products give access to a file upon purchase                                                                                                                                                                 |
| `virtual`                       | boolean | If the product is virtual or not. Virtual products are intangible and aren't shipped                                                                                                                                                                             |
| `permalink`                     | string  | Product URL (post permalink) <i class="label label-info">read-only</i>                                                                                                                                                                                           |
| `sku`                           | string  | SKU refers to a Stock-keeping unit, a unique identifier for each distinct product and service that can be purchased                                                                                                                                              |
| `price`                         | string  | Current product price. This is setted from `regular_price` and `sale_price` <i class="label label-info">read-only</i>                                                                                                                                            |
| `regular_price`                 | string  | Product regular price                                                                                                                                                                                                                                            |
| `sale_price`                    | string  | Product sale price                                                                                                                                                                                                                                               |
| `sale_price_dates_from`         | string  | Sets the sale start date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                                                                             |
| `sale_price_dates_to`           | string  | Sets the sale end date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                                                                               |
| `price_html`                    | string  | Price formatted in HTML, e.g. `<del><span class=\"amount\">&#36;&nbsp;3.00</span></del> <ins><span class=\"amount\">&#36;&nbsp;2.00</span></ins>` <i class="label label-info">read-only</i>                                                                      |
| `taxable`                       | boolean | Show if the product is taxable or not <i class="label label-info">read-only</i>                                                                                                                                                                                  |
| `tax_status`                    | string  | Tax status. The options are: `taxable`, `shipping` (Shipping only) and `none`                                                                                                                                                                                    |
| `tax_class`                     | string  | Tax class                                                                                                                                                                                                                                                        |
| `managing_stock`                | boolean | Enable stock management at product level                                                                                                                                                                                                                         |
| `stock_quantity`                | integer | Stock quantity. If is a variable product this value will be used to control stock for all variations, unless you define stock at variation level.                                                                                                                |
| `in_stock`                      | boolean | Controls whether or not the product is listed as "in stock" or "out of stock" on the frontend.                                                                                                                                                                   |
| `backorders_allowed`            | boolean | Shows if backorders are allowed <i class="label label-info">read-only</i>                                                                                                                                                                                        |
| `backordered`                   | boolean | Shows if a product is on backorder (if the product have the stock_quantity negative) <i class="label label-info">read-only</i>                                                                                                                                   |
| `backorders`                    | mixed   | If managing stock, this controls whether or not backorders are allowed. If enabled, stock quantity can go below 0. The options are: `false` (Do not allow), `notify` (Allow, but notify customer), and `true` (Allow) <i class="label label-info">write-only</i> |
| `sold_individually`             | boolean | When `true` this only allow one item to be bought in a single order                                                                                                                                                                                              |
| `purchaseable`                  | boolean | Shows if the product can be bought <i class="label label-info">read-only</i>                                                                                                                                                                                     |
| `featured`                      | boolean | Featured Product                                                                                                                                                                                                                                                 |
| `visible`                       | boolean | Shows whether or not the product is visible in the catalog <i class="label label-info">read-only</i>                                                                                                                                                             |
| `catalog_visibility`            | string  | Catalog visibility. The following options are available: `visible` (Catalog and search), `catalog` (Only in catalog), `search` (Only in search) and `hidden` (Hidden from all). Default is `visible`                                                             |
| `on_sale`                       | boolean | Shows if the product is on sale or not <i class="label label-info">read-only</i>                                                                                                                                                                                 |
| `weight`                        | string  | Product weight in decimal format                                                                                                                                                                                                                                 |
| `dimensions`                    | array   | List of the product dimensions. See [Dimensions Properties](#dimensions-properties)                                                                                                                                                                              |
| `shipping_required`             | boolean | Shows if the product need to be shipped or not <i class="label label-info">read-only</i>                                                                                                                                                                         |
| `shipping_taxable`              | boolean | Shows whether or not the product shipping is taxable <i class="label label-info">read-only</i>                                                                                                                                                                   |
| `shipping_class`                | string  | Shipping class slug. Shipping classes are used by certain shipping methods to group similar products                                                                                                                                                             |
| `shipping_class_id`             | integer | Shipping class ID <i class="label label-info">read-only</i>                                                                                                                                                                                                      |
| `description`                   | string  | Product description                                                                                                                                                                                                                                              |
| `enable_html_description`       | bool    | Enable HTML for product description <i class="label label-info">write-only</i>                                                                                                                                                                                   |
| `short_description`             | string  | Product short description                                                                                                                                                                                                                                        |
| `enable_html_short_description` | string  | Enable HTML for product short description <i class="label label-info">write-only</i>                                                                                                                                                                             |
| `reviews_allowed`               | boolean | Shows/define if reviews are allowed                                                                                                                                                                                                                              |
| `average_rating`                | string  | Reviews average rating <i class="label label-info">read-only</i>                                                                                                                                                                                                 |
| `rating_count`                  | integer | Amount of reviews that the product have <i class="label label-info">read-only</i>                                                                                                                                                                                |
| `related_ids`                   | array   | List of related products IDs (`integer`) <i class="label label-info">read-only</i>                                                                                                                                                                               |
| `upsell_ids`                    | array   | List of up-sell products IDs (`integer`). Up-sells are products which you recommend instead of the currently viewed product, for example, products that are more profitable or better quality or more expensive                                                  |
| `cross_sell_ids`                | array   | List of cross-sell products IDs. Cross-sells are products which you promote in the cart, based on the current product                                                                                                                                            |
| `parent_id`                     | integer | Product parent ID (post_parent)                                                                                                                                                                                                                                  |
| `categories`                    | array   | List of product categories names (`string`). In write-mode need to pass a array of categories IDs (`integer`) ([uses wp_set_object_terms()](http://codex.wordpress.org/Function_Reference/wp_set_object_terms))                                                  |
| `tags`                          | array   | List of product tags names (`string`). In write-mode need to pass a array of tags IDs (`integer`) ([uses wp_set_object_terms()](http://codex.wordpress.org/Function_Reference/wp_set_object_terms))                                                              |
| `images`                        | array   | List of products images. See [Images Properties](#images-properties)                                                                                                                                                                                             |
| `featured_src`                  | string  | Featured image URL <i class="label label-info">read-only</i>                                                                                                                                                                                                     |
| `attributes`                    | array   | List of product attributes. See [Attributes Properties](#attributes-properties). Note: the attribute must be registered in WooCommerce before.                                                                                                                   |
| `default_attributes`            | array   | Defaults variation attributes. These are the attributes that will be pre-selected on the frontend. See [Default Attributes Properties](#default-attributes-properties) <i class="label label-info">write-only</i>                                                |
| `downloads`                     | array   | List of downloadable files. See [Downloads Properties](#downloads-properties)                                                                                                                                                                                    |
| `download_limit`                | integer | Amount of times the product can be downloaded. In write-mode you can sent a blank string for unlimited re-downloads. e.g `''`                                                                                                                                    |
| `download_expiry`               | integer | Number of days that the customer has up to be able to download the product. In write-mode you can sent a blank string for never expiry. e.g `''`                                                                                                                 |
| `download_type`                 | string  | Download type, this controls the [schema](http://schema.org/). The available options are: `''` (Standard Product), `application` (Application/Software) and `music` (Music)                                                                                      |
| `purchase_note`                 | string  | Optional note to send the customer after purchase.                                                                                                                                                                                                               |
| `total_sales`                   | integer | Amount of sales <i class="label label-info">read-only</i>                                                                                                                                                                                                        |
| `variations`                    | array   | List of products variations. See [Variations Properties](#variations-properties)                                                                                                                                                                                 |
| `parent`                        | array   | List the product parent data when query for a variation <i class="label label-info">read-only</i>                                                                                                                                                                |
| `product_url`                   | string  | Product external URL. Only for `external` products <i class="label label-info">write-only</i>                                                                                                                                                                    |
| `button_text`                   | string  | Product external button text. Only for `external` products <i class="label label-info">write-only</i>                                                                                                                                                            |
| `menu_order`                    | integer | Menu order, used to custom sort products                                                                                                                                                                                                                         |

<aside class="notice">
	<code>menu_order</code> attribute is available starting from WooCommerce 2.5.
</aside>

### Dimensions Properties ###

| Attribute |  Type  |                      Description                       |
| --------- | ------ | ------------------------------------------------------ |
| `length`  | string | Product length in decimal format                       |
| `width`   | string | Product width in decimal format                        |
| `height`  | string | Product height in decimal format                       |
| `unit`    | string | Product name <i class="label label-info">read-only</i> |

### Images Properties ###

|  Attribute   |   Type  |                                      Description                                       |
| ------------ | ------- | -------------------------------------------------------------------------------------- |
| `id`         | integer | Image ID (attachment ID)                                                               |
| `created_at` | string  | UTC DateTime when the image was created <i class="label label-info">read-only</i>      |
| `updated_at` | string  | UTC DateTime when the image was last updated <i class="label label-info">read-only</i> |
| `src`        | string  | Image URL. In write-mode you can use to send new images                                |
| `title`      | string  | Image title (attachment title)                                                         |
| `alt`        | string  | Image alt text (attachment image alt text)                                             |
| `position`   | integer | Image position. `0` means that the image is featured                                   |

<aside class="notice">
	<code>alt</code> and <code>title</code> attributes are writable starting from WooCommerce 2.5.
</aside>

### Attributes Properties ###

|  Attribute  |   Type  |                                            Description                                             |
| ----------- | ------- | -------------------------------------------------------------------------------------------------- |
| `name`      | string  | Attribute name <i class="label label-info">required</i>                                            |
| `slug`      | string  | Attribute slug                                                                                     |
| `position`  | integer | Attribute position                                                                                 |
| `visible`   | boolean | Shows/define if the attribute is visible on the "Additional Information" tab in the product's page |
| `variation` | boolean | Shows/define if the attribute can be used as variation                                             |
| `options`   | array   | List of available term names of the attribute                                                      |

### Default Attributes Properties ###

| Attribute |  Type  |             Description             |
| --------- | ------ | ----------------------------------- |
| `name`    | string | Attribute name                      |
| `slug`    | string | Attribute slug                      |
| `option`  | string | Selected term name of the attribute |

### Downloads Properties ###

| Attribute |  Type  |                             Description                             |
| --------- | ------ | ------------------------------------------------------------------- |
| `id`      | string | File ID (file md5 hash) <i class="label label-info">read-only</i>   |
| `name`    | string | File name                                                           |
| `file`    | string | File URL. In write-mode you can use this property to send new files |

### Variations Properties ###

|        Attribute        |   Type  |                                                                                              Description                                                                                               |
|-------------------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                    | integer | Variation ID (post ID) <i class="label label-info">read-only</i>                                                                                                                                       |
| `created_at`            | string  | UTC DateTime when the variation was created <i class="label label-info">read-only</i>                                                                                                                  |
| `updated_at`            | string  | UTC DateTime when the variation was last updated <i class="label label-info">read-only</i>                                                                                                             |
| `downloadable`          | boolean | If the variation is downloadable or not. Downloadable variations give access to a file upon purchase                                                                                                   |
| `virtual`               | boolean | If the variation is virtual or not. Virtual variations are intangible and aren't shipped                                                                                                               |
| `permalink`             | string  | Variation URL (post permalink) <i class="label label-info">read-only</i>                                                                                                                               |
| `sku`                   | string  | SKU refers to a Stock-keeping unit, a unique identifier for each distinct product and service that can be purchased                                                                                    |
| `price`                 | string  | Current variation price. This is setted from `regular_price` and `sale_price` <i class="label label-info">read-only</i>                                                                                |
| `regular_price`         | string  | Variation regular price                                                                                                                                                                                |
| `sale_price`            | string  | Variation sale price                                                                                                                                                                                   |
| `sale_price_dates_from` | string  | Sets the sale start date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                   |
| `sale_price_dates_to`   | string  | Sets the sale end date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                     |
| `taxable`               | boolean | Show if the variation is taxable or not <i class="label label-info">read-only</i>                                                                                                                      |
| `tax_status`            | string  | Tax status. The options are: `taxable`, `shipping` (Shipping only) and `none`                                                                                                                          |
| `tax_class`             | string  | Tax class                                                                                                                                                                                              |
| `managing_stock`        | boolean | Enable stock management at variation level                                                                                                                                                             |
| `stock_quantity`        | integer | Stock quantity. If is a variable variation this value will be used to control stock for all variations, unless you define stock at variation level.                                                    |
| `in_stock`              | boolean | Controls whether or not the variation is listed as "in stock" or "out of stock" on the frontend.                                                                                                       |
| `backordered`           | boolean | Shows if a variation is on backorder (if the variation have the stock_quantity negative) <i class="label label-info">read-only</i>                                                                     |
| `purchaseable`          | boolean | Shows if the variation can be bought <i class="label label-info">read-only</i>                                                                                                                         |
| `visible`               | boolean | Shows whether or not the product parent is visible in the catalog <i class="label label-info">read-only</i>                                                                                            |
| `on_sale`               | boolean | Shows if the variation is on sale or not <i class="label label-info">read-only</i>                                                                                                                     |
| `weight`                | string  | Variation weight in decimal format                                                                                                                                                                     |
| `dimensions`            | array   | List of the variation dimensions. See [Dimensions Properties](#dimensions-properties)                                                                                                                  |
| `shipping_class`        | string  | Shipping class slug. Shipping classes are used by certain shipping methods to group similar products                                                                                                   |
| `shipping_class_id`     | integer | Shipping class ID <i class="label label-info">read-only</i>                                                                                                                                            |
| `image`                 | array   | Variation featured image. Only position 0 will be used. See [Images Properties](#images-properties)                                                                                                    |
| `attributes`            | array   | List of variation attributes. Similar to a `simple` or `variable` product, but for `variation` indicate the attributes used to form the variation. See [Attributes Properties](#attributes-properties) |
| `downloads`             | array   | List of downloadable files. See [Downloads Properties](#downloads-properties)                                                                                                                          |
| `download_limit`        | integer | Amount of times the variation can be downloaded. In write-mode you can sent a blank string for unlimited re-downloads. e.g `''`                                                                        |
| `download_expiry`       | integer | Number of days that the customer has up to be able to download the varition. In write-mode you can sent a blank string for never expiry. e.g `''`                                                      |

## Create a Product ##

This API helps you to create a new product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/products</h6>
	</div>
</div>

> Example of how to create a `simple` product:

```shell
curl -X POST https://example.com/wc-api/v3/products \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product": {
    "title": "Premium Quality",
    "type": "simple",
    "regular_price": "21.99",
    "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    "categories": [
      9,
      14
    ],
    "images": [
      {
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
        "position": 0
      },
      {
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
        "position": 1
      }
    ]
  }
}'
```

```javascript
var data = {
  product: {
    title: 'Premium Quality',
    type: 'simple',
    regular_price: '21.99',
    description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
    short_description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    categories: [
      9,
      14
    ],
    images: [
      {
        src: 'http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg',
        position: 0
      },
      {
        src: 'http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg',
        position: 1
      }
    ]
  }
};

WooCommerce.post('products', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product' => [
        'title' => 'Premium Quality',
        'type' => 'simple',
        'regular_price' => '21.99',
        'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
        'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        'categories' => [
            9,
            14
        ],
        'images' => [
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg',
                'position' => 0
            ],
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg',
                'position' => 1
            ]
        ]
    ]
];

print_r($woocommerce->post('products', $data));
?>
```

```python
data = {
    "product": {
        "title": "Premium Quality",
        "type": "simple",
        "regular_price": "21.99",
        "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
        "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
        "categories": [
            9,
            14
        ],
        "images": [
            {
                "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
                "position": 0
            },
            {
                "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
                "position": 1
            }
        ]
    }
}

print(wcapi.post("products", data).json())
```

```ruby
data = {
  product: {
    title: "Premium Quality",
    type: "simple",
    regular_price: "21.99",
    description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    short_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    categories: [
      9,
      14
    ],
    images: [
      {
        src: "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
        position: 0
      },
      {
        src: "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
        position: 1
      }
    ]
  }
}

woocommerce.post("products", data).parsed_response
```

> JSON response example:

```json
{
  "product": {
    "title": "Premium Quality",
    "id": 546,
    "created_at": "2015-01-22T19:46:16Z",
    "updated_at": "2015-01-22T19:46:16Z",
    "type": "simple",
    "status": "publish",
    "downloadable": false,
    "virtual": false,
    "permalink": "https://example.com/product/premium-quality/",
    "sku": "",
    "price": "21.99",
    "regular_price": "21.99",
    "sale_price": null,
    "price_html": "<span class=\"amount\">&#36;&nbsp;21.99</span>",
    "taxable": true,
    "tax_status": "taxable",
    "tax_class": "",
    "managing_stock": false,
    "stock_quantity": 0,
    "in_stock": true,
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "purchaseable": true,
    "featured": false,
    "visible": true,
    "catalog_visibility": "visible",
    "on_sale": false,
    "weight": null,
    "dimensions": {
      "length": "",
      "width": "",
      "height": "",
      "unit": "cm"
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": null,
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      37,
      47,
      31,
      19,
      22
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "categories": [
      "Clothing",
      "T-shirts"
    ],
    "tags": [],
    "images": [
      {
        "id": 547,
        "created_at": "2015-01-22T19:46:16Z",
        "updated_at": "2015-01-22T19:46:16Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
        "title": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 548,
        "created_at": "2015-01-22T19:46:17Z",
        "updated_at": "2015-01-22T19:46:17Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
        "title": "",
        "alt": "",
        "position": 1
      }
    ],
    "featured_src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
    "attributes": [],
    "downloads": [],
    "download_limit": 0,
    "download_expiry": 0,
    "download_type": "",
    "purchase_note": "",
    "total_sales": 0,
    "variations": [],
    "parent": [],
    "grouped_products": [],
    "menu_order": 0
  }
}
```

> Example of how to create a `variable` product:

```shell
curl -X POST https://example.com/wc-api/v3/products \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product": {
    "title": "Ship Your Idea",
    "type": "variable",
    "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    "categories": [
      9,
      14
    ],
    "images": [
      {
        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
        "position": 0
      },
      {
        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
        "position": 1
      },
      {
        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
        "position": 2
      },
      {
        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
        "position": 3
      }
    ],
    "attributes": [
      {
        "name": "Color",
        "slug": "color",
        "position": "0",
        "visible": false,
        "variation": true,
        "options": [
          "Black",
          "Green"
        ]
      }
    ],
    "default_attributes": [
      {
        "name": "Color",
        "slug": "color",
        "option": "Black"
      }
    ],
    "variations": [
      {
        "regular_price": "19.99",
        "image": [
          {
            "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
            "position": 0
          }
        ],
        "attributes": [
          {
            "name": "Color",
            "slug": "color",
            "option": "black"
          }
        ]
      },
      {
        "regular_price": "19.99",
        "image": [
          {
            "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
            "position": 0
          }
        ],
        "attributes": [
          {
            "name": "Color",
            "slug": "color",
            "option": "green"
          }
        ]
      }
    ]
  }
}'
```

```javascript
var data = {
  product: {
    title: 'Ship Your Idea',
    type: 'variable',
    description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
    short_description: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    categories: [
      9,
      14
    ],
    images: [
      {
        src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
        position: 0
      },
      {
        src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg',
        position: 1
      },
      {
        src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
        position: 2
      },
      {
        src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg',
        position: 3
      }
    ],
    attributes: [
      {
        name: 'Color',
        slug: 'color',
        position: '0',
        visible: false,
        variation: true,
        options: [
          'Black',
          'Green'
        ]
      }
    ],
    default_attributes: [
      {
        name: 'Color',
        slug: 'color',
        option: 'Black'
      }
    ],
    variations: [
      {
        regular_price: '19.99',
        image: [
          {
            src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
            position: 0
          }
        ],
        attributes: [
          {
            name: 'Color',
            slug: 'color',
            option: 'black'
          }
        ]
      },
      {
        regular_price: '19.99',
        image: [
          {
            src: 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
            position: 0
          }
        ],
        attributes: [
          {
            name: 'Color',
            slug: 'color',
            option: 'green'
          }
        ]
      }
    ]
  }
};

WooCommerce.post('products', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product' => [
        'title' => 'Ship Your Idea',
        'type' => 'variable',
        'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
        'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        'categories' => [
            9,
            14
        ],
        'images' => [
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
                'position' => 0
            ],
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg',
                'position' => 1
            ],
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
                'position' => 2
            ],
            [
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg',
                'position' => 3
            ]
        ],
        'attributes' => [
            [
                'name' => 'Color',
                'slug' => 'color',
                'position' => '0',
                'visible' => false,
                'variation' => true,
                'options' => [
                    'Black',
                    'Green'
                ]
            ]
        ],
        'default_attributes' => [
            [
                'name' => 'Color',
                'slug' => 'color',
                'option' => 'Black'
            ]
        ],
        'variations' => [
            [
                'regular_price' => '19.99',
                'image' => [
                    [
                        'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
                        'position' => 0
                    ]
                ],
                'attributes' => [
                    [
                        'name' => 'Color',
                        'slug' => 'color',
                        'option' => 'black'
                    ]
                ]
            ],
            [
                'regular_price' => '19.99',
                'image' => [
                    [
                        'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
                        'position' => 0
                    ]
                ],
                'attributes' => [
                    [
                        'name' => 'Color',
                        'slug' => 'color',
                        'option' => 'green'
                    ]
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
    "product": {
        "title": "Ship Your Idea",
        "type": "variable",
        "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
        "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
        "categories": [
            9,
            14
        ],
        "images": [
            {
                "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
                "position": 0
            },
            {
                "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
                "position": 1
            },
            {
                "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
                "position": 2
            },
            {
                "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
                "position": 3
            }
        ],
        "attributes": [
            {
                "name": "Color",
                "slug": "color",
                "position": "0",
                "visible": False,
                "variation": True,
                "options": [
                    "Black",
                    "Green"
                ]
            }
        ],
        "default_attributes": [
            {
                "name": "Color",
                "slug": "color",
                "option": "Black"
            }
        ],
        "variations": [
            {
                "regular_price": "19.99",
                "image": [
                    {
                        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
                        "position": 0
                    }
                ],
                "attributes": [
                    {
                        "name": "Color",
                        "slug": "color",
                        "option": "black"
                    }
                ]
            },
            {
                "regular_price": "19.99",
                "image": [
                    {
                        "src": "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
                        "position": 0
                    }
                ],
                "attributes": [
                    {
                        "name": "Color",
                        "slug": "color",
                        "option": "green"
                    }
                ]
            }
        ]
    }
}

print(wcapi.post("products", data).json())
```

```ruby
data = {
  product: {
    title: "Ship Your Idea",
    type: "variable",
    description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
    short_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    categories: [
      9,
      14
    ],
    images: [
      {
        src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
        position: 0
      },
      {
        src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
        position: 1
      },
      {
        src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
        position: 2
      },
      {
        src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
        position: 3
      }
    ],
    attributes: [
      {
        name: "Color",
        slug: "color",
        position: "0",
        visible: false,
        variation: true,
        options: [
          "Black",
          "Green"
        ]
      }
    ],
    default_attributes: [
      {
        name: "Color",
        slug: "color",
        option: "Black"
      }
    ],
    variations: [
      {
        regular_price: "19.99",
        image: [
          {
            src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
            position: 0
          }
        ],
        attributes: [
          {
            name: "Color",
            slug: "color",
            option: "black"
          }
        ]
      },
      {
        regular_price: "19.99",
        image: [
          {
            src: "http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
            position: 0
          }
        ],
        attributes: [
          {
            name: "Color",
            slug: "color",
            option: "green"
          }
        ]
      }
    ]
  }
}

woocommerce.post("products", data).parsed_response
```

> JSON response example:

```json
{
  "product": {
    "title": "Ship Your Idea",
    "id": 604,
    "created_at": "2015-01-22T20:37:14Z",
    "updated_at": "2015-01-22T20:37:14Z",
    "type": "variable",
    "status": "publish",
    "downloadable": false,
    "virtual": false,
    "permalink": "https://example/product/ship-your-idea/",
    "sku": "",
    "price": "19.99",
    "regular_price": "0.00",
    "sale_price": null,
    "price_html": "<span class=\"amount\">&#36;&nbsp;19.99</span>",
    "taxable": true,
    "tax_status": "taxable",
    "tax_class": "",
    "managing_stock": false,
    "stock_quantity": 0,
    "in_stock": true,
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "purchaseable": true,
    "featured": false,
    "visible": true,
    "catalog_visibility": "visible",
    "on_sale": false,
    "weight": null,
    "dimensions": {
      "length": "",
      "width": "",
      "height": "",
      "unit": "cm"
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": null,
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      40,
      37,
      47,
      577,
      34
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "categories": [
      "Clothing",
      "T-shirts"
    ],
    "tags": [],
    "images": [
      {
        "id": 605,
        "created_at": "2015-01-22T20:37:14Z",
        "updated_at": "2015-01-22T20:37:14Z",
        "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
        "title": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 606,
        "created_at": "2015-01-22T20:37:15Z",
        "updated_at": "2015-01-22T20:37:15Z",
        "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
        "title": "",
        "alt": "",
        "position": 1
      },
      {
        "id": 607,
        "created_at": "2015-01-22T20:37:15Z",
        "updated_at": "2015-01-22T20:37:15Z",
        "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
        "title": "",
        "alt": "",
        "position": 2
      },
      {
        "id": 608,
        "created_at": "2015-01-22T20:37:16Z",
        "updated_at": "2015-01-22T20:37:16Z",
        "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
        "title": "",
        "alt": "",
        "position": 3
      }
    ],
    "featured_src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
    "attributes": [
      {
        "name": "Color",
        "slug": "color",
        "position": 0,
        "visible": false,
        "variation": true,
        "options": [
          "Black",
          "Green"
        ]
      }
    ],
    "downloads": [],
    "download_limit": 0,
    "download_expiry": 0,
    "download_type": "",
    "purchase_note": "",
    "total_sales": 0,
    "variations": [
      {
        "id": 609,
        "created_at": "2015-01-22T20:37:14Z",
        "updated_at": "2015-01-22T20:37:14Z",
        "downloadable": false,
        "virtual": false,
        "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=black",
        "sku": "",
        "price": "19.99",
        "regular_price": "19.99",
        "sale_price": null,
        "taxable": true,
        "tax_status": "taxable",
        "tax_class": "",
        "managing_stock": false,
        "stock_quantity": 0,
        "in_stock": true,
        "backordered": false,
        "purchaseable": true,
        "visible": true,
        "on_sale": false,
        "weight": null,
        "dimensions": {
          "length": "",
          "width": "",
          "height": "",
          "unit": "cm"
        },
        "shipping_class": "",
        "shipping_class_id": null,
        "image": [
          {
            "id": 610,
            "created_at": "2015-01-22T20:37:18Z",
            "updated_at": "2015-01-22T20:37:18Z",
            "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
            "title": "",
            "alt": "",
            "position": 0
          }
        ],
        "attributes": [
          {
            "name": "Color",
            "slug": "color",
            "option": "black"
          }
        ],
        "downloads": [],
        "download_limit": 0,
        "download_expiry": 0
      },
      {
        "id": 611,
        "created_at": "2015-01-22T20:37:14Z",
        "updated_at": "2015-01-22T20:37:14Z",
        "downloadable": false,
        "virtual": false,
        "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=green",
        "sku": "",
        "price": "19.99",
        "regular_price": "19.99",
        "sale_price": null,
        "taxable": true,
        "tax_status": "taxable",
        "tax_class": "",
        "managing_stock": false,
        "stock_quantity": 0,
        "in_stock": true,
        "backordered": false,
        "purchaseable": true,
        "visible": true,
        "on_sale": false,
        "weight": null,
        "dimensions": {
          "length": "",
          "width": "",
          "height": "",
          "unit": "cm"
        },
        "shipping_class": "",
        "shipping_class_id": null,
        "image": [
          {
            "id": 612,
            "created_at": "2015-01-22T20:37:19Z",
            "updated_at": "2015-01-22T20:37:19Z",
            "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
            "title": "",
            "alt": "",
            "position": 0
          }
        ],
        "attributes": [
          {
            "name": "Color",
            "slug": "color",
            "option": "green"
          }
        ],
        "downloads": [],
        "download_limit": 0,
        "download_expiry": 0
      }
    ],
    "parent": [],
    "grouped_products": [],
    "menu_order": 0
  }
}
```

## View a Product ##

This API lets you retrieve and view a specific product by ID.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/546 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/546', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/546')); ?>
```

```python
print(wcapi.get("products/546").json())
```

```ruby
woocommerce.get("products/546").parsed_response
```

> JSON response example:

```json
{
  "product": {
    "title": "Premium Quality",
    "id": 546,
    "created_at": "2015-01-22T19:46:16Z",
    "updated_at": "2015-01-22T19:46:16Z",
    "type": "simple",
    "status": "publish",
    "downloadable": false,
    "virtual": false,
    "permalink": "https://example.com/product/premium-quality/",
    "sku": "",
    "price": "21.99",
    "regular_price": "21.99",
    "sale_price": null,
    "price_html": "<span class=\"amount\">&#36;&nbsp;21.99</span>",
    "taxable": true,
    "tax_status": "taxable",
    "tax_class": "",
    "managing_stock": false,
    "stock_quantity": 0,
    "in_stock": true,
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "purchaseable": true,
    "featured": false,
    "visible": true,
    "catalog_visibility": "visible",
    "on_sale": false,
    "weight": null,
    "dimensions": {
      "length": "",
      "width": "",
      "height": "",
      "unit": "cm"
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": null,
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      37,
      47,
      31,
      19,
      22
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "categories": [
      "Clothing",
      "T-shirts"
    ],
    "tags": [],
    "images": [
      {
        "id": 547,
        "created_at": "2015-01-22T19:46:16Z",
        "updated_at": "2015-01-22T19:46:16Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
        "title": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 548,
        "created_at": "2015-01-22T19:46:17Z",
        "updated_at": "2015-01-22T19:46:17Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
        "title": "",
        "alt": "",
        "position": 1
      }
    ],
    "featured_src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
    "attributes": [],
    "downloads": [],
    "download_limit": 0,
    "download_expiry": 0,
    "download_type": "",
    "purchase_note": "",
    "total_sales": 0,
    "variations": [],
    "parent": [],
    "grouped_products": [],
    "menu_order": 0
  }
}
```

## View List of Products ##

This API helps you to view all the products.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products \
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
{
  "products": [
    {
      "title": "Premium Quality",
      "id": 546,
      "created_at": "2015-01-22T19:46:16Z",
      "updated_at": "2015-01-22T19:46:16Z",
      "type": "simple",
      "status": "publish",
      "downloadable": false,
      "virtual": false,
      "permalink": "https://example.com/product/premium-quality/",
      "sku": "",
      "price": "21.99",
      "regular_price": "21.99",
      "sale_price": null,
      "price_html": "<span class=\"amount\">&#36;&nbsp;21.99</span>",
      "taxable": true,
      "tax_status": "taxable",
      "tax_class": "",
      "managing_stock": false,
      "stock_quantity": 0,
      "in_stock": true,
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "purchaseable": true,
      "featured": false,
      "visible": true,
      "catalog_visibility": "visible",
      "on_sale": false,
      "weight": null,
      "dimensions": {
        "length": "",
        "width": "",
        "height": "",
        "unit": "cm"
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": null,
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        37,
        47,
        31,
        19,
        22
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "categories": [
        "Clothing",
        "T-shirts"
      ],
      "tags": [],
      "images": [
        {
          "id": 547,
          "created_at": "2015-01-22T19:46:16Z",
          "updated_at": "2015-01-22T19:46:16Z",
          "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
          "title": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 548,
          "created_at": "2015-01-22T19:46:17Z",
          "updated_at": "2015-01-22T19:46:17Z",
          "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
          "title": "",
          "alt": "",
          "position": 1
        }
      ],
      "featured_src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
      "attributes": [],
      "downloads": [],
      "download_limit": 0,
      "download_expiry": 0,
      "download_type": "",
      "purchase_note": "",
      "total_sales": 0,
      "variations": [],
      "parent": [],
      "grouped_products": [],
      "menu_order": 0
    },
    {
      "title": "Ship Your Idea",
      "id": 604,
      "created_at": "2015-01-22T20:37:14Z",
      "updated_at": "2015-01-22T20:37:14Z",
      "type": "variable",
      "status": "publish",
      "downloadable": false,
      "virtual": false,
      "permalink": "https://example/product/ship-your-idea/",
      "sku": "",
      "price": "19.99",
      "regular_price": "0.00",
      "sale_price": null,
      "price_html": "<span class=\"amount\">&#36;&nbsp;19.99</span>",
      "taxable": true,
      "tax_status": "taxable",
      "tax_class": "",
      "managing_stock": false,
      "stock_quantity": 0,
      "in_stock": true,
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "purchaseable": true,
      "featured": false,
      "visible": true,
      "catalog_visibility": "visible",
      "on_sale": false,
      "weight": null,
      "dimensions": {
        "length": "",
        "width": "",
        "height": "",
        "unit": "cm"
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": null,
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        40,
        37,
        47,
        577,
        34
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "categories": [
        "Clothing",
        "T-shirts"
      ],
      "tags": [],
      "images": [
        {
          "id": 605,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-01-22T20:37:14Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
          "title": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 606,
          "created_at": "2015-01-22T20:37:15Z",
          "updated_at": "2015-01-22T20:37:15Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
          "title": "",
          "alt": "",
          "position": 1
        },
        {
          "id": 607,
          "created_at": "2015-01-22T20:37:15Z",
          "updated_at": "2015-01-22T20:37:15Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
          "title": "",
          "alt": "",
          "position": 2
        },
        {
          "id": 608,
          "created_at": "2015-01-22T20:37:16Z",
          "updated_at": "2015-01-22T20:37:16Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
          "title": "",
          "alt": "",
          "position": 3
        }
      ],
      "featured_src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
      "attributes": [
        {
          "name": "Color",
          "slug": "color",
          "position": 0,
          "visible": false,
          "variation": true,
          "options": [
            "Black",
            "Green"
          ]
        }
      ],
      "downloads": [],
      "download_limit": 0,
      "download_expiry": 0,
      "download_type": "",
      "purchase_note": "",
      "total_sales": 0,
      "variations": [
        {
          "id": 609,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-01-22T20:37:14Z",
          "downloadable": false,
          "virtual": false,
          "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=black",
          "sku": "",
          "price": "19.99",
          "regular_price": "19.99",
          "sale_price": null,
          "taxable": true,
          "tax_status": "taxable",
          "tax_class": "",
          "managing_stock": false,
          "stock_quantity": 0,
          "in_stock": true,
          "backordered": false,
          "purchaseable": true,
          "visible": true,
          "on_sale": false,
          "weight": null,
          "dimensions": {
            "length": "",
            "width": "",
            "height": "",
            "unit": "cm"
          },
          "shipping_class": "",
          "shipping_class_id": null,
          "image": [
            {
              "id": 610,
              "created_at": "2015-01-22T20:37:18Z",
              "updated_at": "2015-01-22T20:37:18Z",
              "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
              "title": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "name": "Color",
              "slug": "color",
              "option": "black"
            }
          ],
          "downloads": [],
          "download_limit": 0,
          "download_expiry": 0
        },
        {
          "id": 611,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-01-22T20:37:14Z",
          "downloadable": false,
          "virtual": false,
          "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=green",
          "sku": "",
          "price": "19.99",
          "regular_price": "19.99",
          "sale_price": null,
          "taxable": true,
          "tax_status": "taxable",
          "tax_class": "",
          "managing_stock": false,
          "stock_quantity": 0,
          "in_stock": true,
          "backordered": false,
          "purchaseable": true,
          "visible": true,
          "on_sale": false,
          "weight": null,
          "dimensions": {
            "length": "",
            "width": "",
            "height": "",
            "unit": "cm"
          },
          "shipping_class": "",
          "shipping_class_id": null,
          "image": [
            {
              "id": 612,
              "created_at": "2015-01-22T20:37:19Z",
              "updated_at": "2015-01-22T20:37:19Z",
              "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
              "title": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "name": "Color",
              "slug": "color",
              "option": "green"
            }
          ],
          "downloads": [],
          "download_limit": 0,
          "download_expiry": 0
        }
      ],
      "parent": [],
      "grouped_products": [],
      "menu_order": 0
    }
  ]
}
```

#### Available Filters ####

|      Filter      |  Type  |                     Description                      |
| ---------------- | ------ | ---------------------------------------------------- |
| `type`           | string | Products by type. eg: `simple` or `variable`.        |
| `category`       | string | Products by category.                                |
| `tag`            | string | Products by tag.                                     |
| `shipping_class` | string | Products by shipping class.                          |
| `pa_*`           | string | Products by attributes. eg: `filter[pa_color]=black` |
| `sku`            | string | Filter a product by SKU.                             |

<aside class="notice">
	<code>tag</code>, <code>shipping_class</code> and <code>pa_*</code> filters are available starting from WooCommerce 2.5.
</aside>

## Update a Product ##

This API lets you make changes to a product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/products/546 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "product": {
    "regular_price": "24.54"
  }
}'
```

```javascript
var data = {
  product: {
    regular_price: '24.54'
  }
};

WooCommerce.put('products/546', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'product' => [
        'regular_price' => '24.54'
    ]
];

print_r($woocommerce->put('products/546', $data));
?>
```

```python
data = {
    "product": {
        "regular_price": "24.54"
    }
}

print(wcapi.put("products/546", data).json())
```

```ruby
data = {
  product: {
    regular_price: "24.54"
  }
}

woocommerce.put("products/546", data).parsed_response
```

> JSON response example:

```json
{
  "product": {
    "title": "Premium Quality",
    "id": 546,
    "created_at": "2015-01-22T19:46:16Z",
    "updated_at": "2015-01-22T19:55:31Z",
    "type": "simple",
    "status": "publish",
    "downloadable": false,
    "virtual": false,
    "permalink": "https://example.com/product/premium-quality/",
    "sku": "",
    "price": "24.54",
    "regular_price": "24.54",
    "sale_price": null,
    "price_html": "<span class=\"amount\">&#36;&nbsp;24.54</span>",
    "taxable": true,
    "tax_status": "taxable",
    "tax_class": "",
    "managing_stock": false,
    "stock_quantity": 0,
    "in_stock": true,
    "backorders_allowed": false,
    "backordered": false,
    "sold_individually": false,
    "purchaseable": true,
    "featured": false,
    "visible": true,
    "catalog_visibility": "visible",
    "on_sale": false,
    "weight": null,
    "dimensions": {
      "length": "",
      "width": "",
      "height": "",
      "unit": "cm"
    },
    "shipping_required": true,
    "shipping_taxable": true,
    "shipping_class": "",
    "shipping_class_id": null,
    "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
    "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
    "reviews_allowed": true,
    "average_rating": "0.00",
    "rating_count": 0,
    "related_ids": [
      37,
      47,
      31,
      19,
      22
    ],
    "upsell_ids": [],
    "cross_sell_ids": [],
    "parent_id": 0,
    "categories": [
      "Clothing",
      "T-shirts"
    ],
    "tags": [],
    "images": [
      {
        "id": 547,
        "created_at": "2015-01-22T19:46:16Z",
        "updated_at": "2015-01-22T19:46:16Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
        "title": "",
        "alt": "",
        "position": 0
      },
      {
        "id": 548,
        "created_at": "2015-01-22T19:46:17Z",
        "updated_at": "2015-01-22T19:46:17Z",
        "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
        "title": "",
        "alt": "",
        "position": 1
      }
    ],
    "featured_src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
    "attributes": [],
    "downloads": [],
    "download_limit": 0,
    "download_expiry": 0,
    "download_type": "",
    "purchase_note": "",
    "total_sales": 0,
    "variations": [],
    "parent": [],
    "grouped_products": [],
    "menu_order": 0
  }
}
```

## Create/Update Multiple Products ##

This API helps you to bulk create/update multiple products.

To update is necessary to send objects containing IDs and to create new not just send the ID.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/products/bulk</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/products/bulk \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "products": [
    {
      "id": 546,
      "regular_price": "29.99"
    },
    {
      "id": 604,
      "variations": [
        {
          "id": 609,
          "regular_price": "29.99"
        },
        {
          "id": 611,
          "regular_price": "29.99"
        }
      ]
    }
  ]
}'
```

```javascript
var data = {
  products: [
    {
      id: 546,
      regular_price: '29.99'
    },
    {
      id: 604,
      variations: [
        {
          id: 609,
          regular_price: '29.99'
        },
        {
          id: 611,
          regular_price: '29.99'
        }
      ]
    }
  ]
};

WooCommerce.post('products/bulk', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'products' => [
        [
            'id' => 546,
            'regular_price' => '29.99'
        ],
        [
            'id' => 604,
            'variations' => [
                [
                    'id' => 609,
                    'regular_price' => '29.99'
                ],
                [
                    'id' => 611,
                    'regular_price' => '29.99'
                ]
            ]
        ]
    ]
];

print_r($woocommerce->post('products/bulk', $data));
?>
```

```python
data = {
    "products": [
        {
            "id": 546,
            "regular_price": "29.99"
        },
        {
            "id": 604,
            "variations": [
                {
                    "id": 609,
                    "regular_price": "29.99"
                },
                {
                    "id": 611,
                    "regular_price": "29.99"
                }
            ]
        }
    ]
}

print(wcapi.post("products/bulk", data).json())
```

```ruby
data = {
  products: [
    {
      id: 546,
      regular_price: "29.99"
    },
    {
      id: 604,
      variations: [
        {
          id: 609,
          regular_price: "29.99"
        },
        {
          id: 611,
          regular_price: "29.99"
        }
      ]
    }
  ]
}

woocommerce.post("products/bulk", data).parsed_response
```

> JSON response example:

```json
{
  "products": [
    {
      "title": "Premium Quality",
      "id": 546,
      "created_at": "2015-01-22T19:46:16Z",
      "updated_at": "2015-07-27T14:22:32Z",
      "type": "simple",
      "status": "publish",
      "downloadable": false,
      "virtual": false,
      "permalink": "https://example.com/product/premium-quality/",
      "sku": "",
      "price": "29.99",
      "regular_price": "29.99",
      "sale_price": null,
      "price_html": "<span class=\"amount\">&#36;&nbsp;29.99</span>",
      "taxable": true,
      "tax_status": "taxable",
      "tax_class": "",
      "managing_stock": false,
      "stock_quantity": 0,
      "in_stock": true,
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "purchaseable": true,
      "featured": false,
      "visible": true,
      "catalog_visibility": "visible",
      "on_sale": false,
      "weight": null,
      "dimensions": {
        "length": "",
        "width": "",
        "height": "",
        "unit": "cm"
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": null,
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        37,
        47,
        31,
        19,
        22
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "categories": [
        "Clothing",
        "T-shirts"
      ],
      "tags": [],
      "images": [
        {
          "id": 547,
          "created_at": "2015-01-22T19:46:16Z",
          "updated_at": "2015-01-22T19:46:16Z",
          "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
          "title": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 548,
          "created_at": "2015-01-22T19:46:17Z",
          "updated_at": "2015-01-22T19:46:17Z",
          "src": "http://example.com/wp-content/uploads/2015/01/premium-quality-back.jpg",
          "title": "",
          "alt": "",
          "position": 1
        }
      ],
      "featured_src": "http://example.com/wp-content/uploads/2015/01/premium-quality-front.jpg",
      "attributes": [],
      "downloads": [],
      "download_limit": 0,
      "download_expiry": 0,
      "download_type": "",
      "purchase_note": "",
      "total_sales": 0,
      "variations": [],
      "parent": [],
      "grouped_products": [],
      "menu_order": 0
    },
    {
      "title": "Ship Your Idea",
      "id": 604,
      "created_at": "2015-01-22T20:37:14Z",
      "updated_at": "2015-07-27T14:22:32Z",
      "type": "variable",
      "status": "publish",
      "downloadable": false,
      "virtual": false,
      "permalink": "https://example/product/ship-your-idea/",
      "sku": "",
      "price": "29.99",
      "regular_price": "0.00",
      "sale_price": null,
      "price_html": "<span class=\"amount\">&#36;&nbsp;29.99</span>",
      "taxable": true,
      "tax_status": "taxable",
      "tax_class": "",
      "managing_stock": false,
      "stock_quantity": 0,
      "in_stock": true,
      "backorders_allowed": false,
      "backordered": false,
      "sold_individually": false,
      "purchaseable": true,
      "featured": false,
      "visible": true,
      "catalog_visibility": "visible",
      "on_sale": false,
      "weight": null,
      "dimensions": {
        "length": "",
        "width": "",
        "height": "",
        "unit": "cm"
      },
      "shipping_required": true,
      "shipping_taxable": true,
      "shipping_class": "",
      "shipping_class_id": null,
      "description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\n",
      "short_description": "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\n",
      "reviews_allowed": true,
      "average_rating": "0.00",
      "rating_count": 0,
      "related_ids": [
        40,
        37,
        47,
        577,
        34
      ],
      "upsell_ids": [],
      "cross_sell_ids": [],
      "parent_id": 0,
      "categories": [
        "Clothing",
        "T-shirts"
      ],
      "tags": [],
      "images": [
        {
          "id": 605,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-01-22T20:37:14Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
          "title": "",
          "alt": "",
          "position": 0
        },
        {
          "id": 606,
          "created_at": "2015-01-22T20:37:15Z",
          "updated_at": "2015-01-22T20:37:15Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg",
          "title": "",
          "alt": "",
          "position": 1
        },
        {
          "id": 607,
          "created_at": "2015-01-22T20:37:15Z",
          "updated_at": "2015-01-22T20:37:15Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
          "title": "",
          "alt": "",
          "position": 2
        },
        {
          "id": 608,
          "created_at": "2015-01-22T20:37:16Z",
          "updated_at": "2015-01-22T20:37:16Z",
          "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg",
          "title": "",
          "alt": "",
          "position": 3
        }
      ],
      "featured_src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
      "attributes": [
        {
          "name": "Color",
          "slug": "color",
          "position": 0,
          "visible": false,
          "variation": true,
          "options": [
            "Black",
            "Green"
          ]
        }
      ],
      "downloads": [],
      "download_limit": 0,
      "download_expiry": 0,
      "download_type": "",
      "purchase_note": "",
      "total_sales": 0,
      "variations": [
        {
          "id": 609,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-07-27T14:22:32Z",
          "downloadable": false,
          "virtual": false,
          "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=black",
          "sku": "",
          "price": "29.99",
          "regular_price": "29.99",
          "sale_price": null,
          "taxable": true,
          "tax_status": "taxable",
          "tax_class": "",
          "managing_stock": false,
          "stock_quantity": 0,
          "in_stock": true,
          "backordered": false,
          "purchaseable": true,
          "visible": true,
          "on_sale": false,
          "weight": null,
          "dimensions": {
            "length": "",
            "width": "",
            "height": "",
            "unit": "cm"
          },
          "shipping_class": "",
          "shipping_class_id": null,
          "image": [
            {
              "id": 610,
              "created_at": "2015-01-22T20:37:18Z",
              "updated_at": "2015-07-27T14:22:32Z",
              "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg",
              "title": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "name": "Color",
              "slug": "color",
              "option": "black"
            }
          ],
          "downloads": [],
          "download_limit": 0,
          "download_expiry": 0
        },
        {
          "id": 611,
          "created_at": "2015-01-22T20:37:14Z",
          "updated_at": "2015-07-27T14:22:32Z",
          "downloadable": false,
          "virtual": false,
          "permalink": "https://example/product/ship-your-idea-10/?attribute_pa_color=green",
          "sku": "",
          "price": "29.99",
          "regular_price": "29.99",
          "sale_price": null,
          "taxable": true,
          "tax_status": "taxable",
          "tax_class": "",
          "managing_stock": false,
          "stock_quantity": 0,
          "in_stock": true,
          "backordered": false,
          "purchaseable": true,
          "visible": true,
          "on_sale": false,
          "weight": null,
          "dimensions": {
            "length": "",
            "width": "",
            "height": "",
            "unit": "cm"
          },
          "shipping_class": "",
          "shipping_class_id": null,
          "image": [
            {
              "id": 612,
              "created_at": "2015-01-22T20:37:19Z",
              "updated_at": "2015-01-22T20:37:19Z",
              "src": "http://example/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg",
              "title": "",
              "alt": "",
              "position": 0
            }
          ],
          "attributes": [
            {
              "name": "Color",
              "slug": "color",
              "option": "green"
            }
          ],
          "downloads": [],
          "download_limit": 0,
          "download_expiry": 0
        }
      ],
      "parent": [],
      "grouped_products": [],
      "menu_order": 0
    }
  ]
}
```

## Delete a Product ##

This API helps you delete a product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/products/546?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/546?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('products/546', ['force' => true])); ?>
```

```python
print(wcapi.delete("products/546?force=true").json())
```

```ruby
woocommerce.delete("products/546?force=true").parsed_response
```

> JSON response example:

```json
{
  "message": "Permanently deleted product"
}
```

### Parameters ###

| Parameter |  Type  |                                                                           Description                                                                            |
| --------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `force`   | string | Use `true` whether to permanently delete the product, defaults to `false`. Note that permanently deleting the product will return HTTP 200 rather than HTTP 202. |

## View Products Count ##

This API lets you retrieve a count of all products.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/count</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/count \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/count', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/count')); ?>
```

```python
print(wcapi.get("products/count").json())
```

```ruby
woocommerce.get("products/count").parsed_response
```

> JSON response example:

```json
{
  "count": 2
}
```

#### Available Filters ####

|      Filter      |  Type  |                     Description                      |
| ---------------- | ------ | ---------------------------------------------------- |
| `type`           | string | Products by type. eg: `simple` or `variable`.        |
| `category`       | string | Products by category.                                |
| `tag`            | string | Products by tag.                                     |
| `shipping_class` | string | Products by shipping class.                          |
| `pa_*`           | string | Products by attributes. eg: `filter[pa_color]=black` |
| `sku`            | string | Filter a product by SKU.                             |

<aside class="notice">
	<code>tag</code>, <code>shipping_class</code> and <code>pa_*</code> filters are available starting from WooCommerce 2.5.
</aside>

## View List of Product Orders ##

This API lets you retrieve all product orders.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/&lt;id&gt;/orders</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/546/orders \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/546/orders', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/546/orders')); ?>
```

```python
print(wcapi.get("products/546/orders").json())
```

```ruby
woocommerce.get("products/546/orders").parsed_response
```

> JSON response example:

```json
{
  "orders": [
    {
      "id": 645,
      "order_number": 645,
      "created_at": "2015-01-26T20:00:21Z",
      "updated_at": "2015-07-31T11:45:12Z",
      "completed_at": "2015-01-26T20:00:21Z",
      "status": "processing",
      "currency": "USD",
      "total": "79.87",
      "subtotal": "63.97",
      "total_line_items_quantity": 3,
      "total_tax": "5.90",
      "total_shipping": "10.00",
      "cart_tax": "5.40",
      "shipping_tax": "0.50",
      "total_discount": "0.00",
      "shipping_methods": "Local Delivery",
      "payment_details": {
        "method_id": "bacs",
        "method_title": "Direct Bank Transfer",
        "paid": true
      },
      "billing_address": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping_address": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "note": "",
      "customer_ip": "127.0.0.1",
      "customer_user_agent": "WordPress/4.1; http://example.com",
      "customer_id": 2,
      "view_order_url": "https://example.com/my-account/view-order/645",
      "line_items": [
        {
          "id": 504,
          "subtotal": "43.98",
          "subtotal_tax": "4.40",
          "total": "43.98",
          "total_tax": "4.40",
          "price": "21.99",
          "quantity": 2,
          "tax_class": "reduced-rate",
          "name": "Premium Quality",
          "product_id": 546,
          "sku": "",
          "meta": []
        },
        {
          "id": 505,
          "subtotal": "19.99",
          "subtotal_tax": "1.00",
          "total": "19.99",
          "total_tax": "1.00",
          "price": "19.99",
          "quantity": 1,
          "tax_class": null,
          "name": "Ship Your Idea",
          "product_id": 613,
          "sku": "",
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Black"
            }
          ]
        }
      ],
      "shipping_lines": [
        {
          "id": 506,
          "method_id": "flat_rate",
          "method_title": "Local Delivery",
          "total": "10.00"
        }
      ],
      "tax_lines": [
        {
          "id": 507,
          "rate_id": "5",
          "code": "US-CA-TAX-1",
          "title": "Tax",
          "total": "4.40",
          "compound": false
        },
        {
          "id": 508,
          "rate_id": "4",
          "code": "US-STANDARD-1",
          "title": "Standard",
          "total": "1.50",
          "compound": false
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "customer": {
        "id": 2,
        "created_at": "2014-11-19T18:34:19Z",
        "email": "john.doe@example.com",
        "first_name": "",
        "last_name": "",
        "username": "john.doe",
        "last_order_id": "645",
        "last_order_date": "2015-01-26T20:00:21Z",
        "orders_count": 2,
        "total_spent": "19.00",
        "avatar_url": "https://secure.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=96",
        "billing_address": {
          "first_name": "John",
          "last_name": "Doe",
          "company": "",
          "address_1": "969 Market",
          "address_2": "",
          "city": "San Francisco",
          "state": "CA",
          "postcode": "94103",
          "country": "US",
          "email": "john.doe@example.com",
          "phone": "(555) 555-5555"
        },
        "shipping_address": {
          "first_name": "John",
          "last_name": "Doe",
          "company": "",
          "address_1": "969 Market",
          "address_2": "",
          "city": "San Francisco",
          "state": "CA",
          "postcode": "94103",
          "country": "US"
        }
      }
    },
    {
      "id": 644,
      "order_number": 644,
      "created_at": "2015-01-26T19:33:42Z",
      "updated_at": "2015-07-31T11:45:12Z",
      "completed_at": "2015-01-26T19:33:42Z",
      "status": "on-hold",
      "currency": "USD",
      "total": "44.14",
      "subtotal": "30.99",
      "total_line_items_quantity": 2,
      "total_tax": "3.15",
      "total_shipping": "10.00",
      "cart_tax": "2.65",
      "shipping_tax": "0.50",
      "total_discount": "0.00",
      "shipping_methods": "Flat Rate",
      "payment_details": {
        "method_id": "bacs",
        "method_title": "Direct Bank Transfer",
        "paid": false
      },
      "billing_address": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping_address": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "note": "",
      "customer_ip": "127.0.0.1",
      "customer_user_agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36",
      "customer_id": 2,
      "view_order_url": "https://example.com/my-account/view-order/644",
      "line_items": [
        {
          "id": 499,
          "subtotal": "21.99",
          "subtotal_tax": "2.20",
          "total": "21.99",
          "total_tax": "2.20",
          "price": "21.99",
          "quantity": 1,
          "tax_class": "reduced-rate",
          "name": "Premium Quality",
          "product_id": 546,
          "sku": "",
          "meta": []
        },
        {
          "id": 500,
          "subtotal": "9.00",
          "subtotal_tax": "0.45",
          "total": "9.00",
          "total_tax": "0.45",
          "price": "9.00",
          "quantity": 1,
          "tax_class": null,
          "name": "Woo Album #4",
          "product_id": 96,
          "sku": "",
          "meta": []
        }
      ],
      "shipping_lines": [
        {
          "id": 501,
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "10.00"
        }
      ],
      "tax_lines": [
        {
          "id": 502,
          "rate_id": "5",
          "code": "US-CA-TAX-1",
          "title": "Tax",
          "total": "4.40",
          "compound": false
        },
        {
          "id": 503,
          "rate_id": "4",
          "code": "US-STANDARD-1",
          "title": "Standard",
          "total": "1.50",
          "compound": false
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "customer": {
        "id": 2,
        "created_at": "2014-11-19T18:34:19Z",
        "email": "john.doe@example.com",
        "first_name": "",
        "last_name": "",
        "username": "john.doe",
        "last_order_id": "645",
        "last_order_date": "2015-01-26T20:00:21Z",
        "orders_count": 2,
        "total_spent": "19.00",
        "avatar_url": "https://secure.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=96",
        "billing_address": {
          "first_name": "John",
          "last_name": "Doe",
          "company": "",
          "address_1": "969 Market",
          "address_2": "",
          "city": "San Francisco",
          "state": "CA",
          "postcode": "94103",
          "country": "US",
          "email": "john.doe@example.com",
          "phone": "(555) 555-5555"
        },
        "shipping_address": {
          "first_name": "John",
          "last_name": "Doe",
          "company": "",
          "address_1": "969 Market",
          "address_2": "",
          "city": "San Francisco",
          "state": "CA",
          "postcode": "94103",
          "country": "US"
        }
      }
    }
  ]
}
```

<aside class="notice">
	View the <a href="#orders-properties">Order Properties</a> for more details on this response.
</aside>

## View List of Product Reviews ##

This API lets you retrieve all reviews of a product.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/products/&lt;id&gt;/reviews</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/products/546/reviews \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/546/reviews', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('products/546/reviews')); ?>
```

```python
print(wcapi.get("products/546/reviews").json())
```

```ruby
woocommerce.get("products/546/reviews").parsed_response
```

> JSON response example:

```json
{
  "product_reviews": [
    {
      "id": 4,
      "created_at": "2013-06-07T11:57:45Z",
      "review": "This t-shirt is awesome! Would recommend to everyone!\n\nI'm ordering mine next week",
      "rating": "5",
      "reviewer_name": "Andrew",
      "reviewer_email": "andrew@example.com",
      "verified": false
    },
    {
      "id": 3,
      "created_at": "2013-06-07T11:53:49Z",
      "review": "Wonderful quality, and an awesome design. WooThemes ftw!",
      "rating": "4",
      "reviewer_name": "Cobus Bester",
      "reviewer_email": "cobus@example.com",
      "verified": false
    }
  ]
}
```

### Product Reviews Properties ###

|    Attribute     |   Type  |                                        Description                                        |
| ---------------- | ------- | ----------------------------------------------------------------------------------------- |
| `id`             | integer | Review ID (comment ID) <i class="label label-info">read-only</i>                          |
| `created_at`     | string  | UTC DateTime when the review was created <i class="label label-info">read-only</i>        |
| `rating`         | string  | Review rating (0 to 5) <i class="label label-info">read-only</i>                          |
| `reviewer_name`  | string  | Reviewer name <i class="label label-info">read-only</i>                                   |
| `reviewer_email` | string  | Reviewer email <i class="label label-info">read-only</i>                                  |
| `verified`       | boolean | Shows if the reviewer bought the product or not <i class="label label-info">read-only</i> |
