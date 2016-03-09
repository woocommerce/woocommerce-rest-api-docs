# Products #

This section lists all API that can be used to create, edit or otherwise manipulate products.

## Products Properties ##

|            Attribute            |   Type  |                                                                                                                           Description                                                                                                                            |
| ------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `title`                         | string  | Product name                                                                                                                                                                                                                                                     |
| `id`                            | integer | Product ID (post ID) <i class="label label-info">read-only</i>                                                                                                                                                                                                   |
| `created_at`                    | string  | UTC DateTime when the product was created <i class="label label-info">read-only</i>                                                                                                                                                                              |
| `updated_at`                    | string  | UTC DateTime when the product was last updated <i class="label label-info">read-only</i>                                                                                                                                                                         |
| `type`                          | string  | Product type. By default in WooCommerce the following types are available: `simple`, `grouped`, `external`, `variable`. Default is `simple`                                                                                                                      |
| `status`                        | string  | Product status (post status). Default is `publish`                                                                                                                                                                                                               |
| `downloadable`                  | boolean | If the product is downloadable or not. Downloadable products give access to a file upon purchase                                                                                                                                                                 |
| `virtual`                       | boolean | If the product is virtual or not. Virtual products are intangible and aren't shipped                                                                                                                                                                             |
| `permalink`                     | string  | Product URL (post permalink) <i class="label label-info">read-only</i>                                                                                                                                                                                           |
| `sku`                           | string  | SKU refers to a Stock-keeping unit, a unique identifier for each distinct product and service that can be purchased                                                                                                                                              |
| `price`                         | float   | Current product price. This is setted from `regular_price` and `sale_price` <i class="label label-info">read-only</i>                                                                                                                                            |
| `regular_price`                 | float   | Product regular price                                                                                                                                                                                                                                            |
| `sale_price`                    | float   | Product sale price                                                                                                                                                                                                                                               |
| `sale_price_dates_from`         | float   | Sets the sale start date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                                                                             |
| `sale_price_dates_to`           | float   | Sets the sale end date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                                                                               |
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
| `featured_src`                  | string  | Featured image URL                                                                                                                                                                                                     |
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
| `title`      | string  | Image title (attachment title) <i class="label label-info">read-only</i>               |
| `alt`        | string  | Image alt text (attachment image alt text) <i class="label label-info">read-only</i>   |
| `position`   | integer | Image position. `0` means that the image is featured                                   |

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
| ----------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`                    | integer | Variation ID (post ID) <i class="label label-info">read-only</i>                                                                                                                                       |
| `created_at`            | string  | UTC DateTime when the variation was created <i class="label label-info">read-only</i>                                                                                                                  |
| `updated_at`            | string  | UTC DateTime when the variation was last updated <i class="label label-info">read-only</i>                                                                                                             |
| `downloadable`          | boolean | If the variation is downloadable or not. Downloadable variations give access to a file upon purchase                                                                                                   |
| `virtual`               | boolean | If the variation is virtual or not. Virtual variations are intangible and aren't shipped                                                                                                               |
| `permalink`             | string  | Variation URL (post permalink) <i class="label label-info">read-only</i>                                                                                                                               |
| `sku`                   | string  | SKU refers to a Stock-keeping unit, a unique identifier for each distinct product and service that can be purchased                                                                                    |
| `price`                 | float   | Current variation price. This is setted from `regular_price` and `sale_price` <i class="label label-info">read-only</i>                                                                                |
| `regular_price`         | float   | Variation regular price                                                                                                                                                                                |
| `sale_price`            | float   | Variation sale price                                                                                                                                                                                   |
| `sale_price_dates_from` | float   | Sets the sale start date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                   |
| `sale_price_dates_to`   | float   | Sets the sale end date. Date in the `YYYY-MM-DD` format <i class="label label-info">write-only</i>                                                                                                     |
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
| `images`                | array   | Variation featured image. See [Images Properties](#images-properties)                                                                                                                                  |
| `attributes`            | array   | List of variation attributes. Similar to a `simple` or `variable` product, but for `variation` indicate the attributes used to form the variation. See [Attributes Properties](#attributes-properties) |
| `downloads`             | array   | List of downloadable files. See [Downloads Properties](#downloads-properties)                                                                                                                          |
| `download_limit`        | integer | Amount of times the variation can be downloaded. In write-mode you can sent a blank string for unlimited re-downloads. e.g `''`                                                                        |
| `download_expiry`       | integer | Number of days that the customer has up to be able to download the varition. In write-mode you can sent a blank string for never expiry. e.g `''`                                                      |

## Create A Product ##

This API helps you to create a new product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v2/products</h6>
	</div>
</div>

> Example of how to create a `simple` product:

```shell
curl -X POST https://example.com/wc-api/v2/products \
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

```php
<?php
$data = array(
    'product' => array(
        'title' => 'Premium Quality',
        'type' => 'simple',
        'regular_price' => '21.99',
        'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
        'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        'categories' => array(
            9,
            14
        ),
        'images' => array(
            array(
                'src' => 'http =>//example.com/wp-content/uploads/2015/01/premium-quality-front.jpg',
                'position' => 0
            ),
            array(
                'src' => 'http =>//example.com/wp-content/uploads/2015/01/premium-quality-back.jpg',
                'position' => 1
            )
        )
    )
);

print_r($woocommerce->products->create($data));
?>
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
    "parent": []
  }
}
```

> Example of how to create a `variable` product:

```shell
curl -X POST https://example.com/wc-api/v2/products \
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

```php
<?php
$data = array(
    'product' => array(
        'title' => 'Ship Your Idea',
        'type' => 'variable',
        'description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
        'short_description' => 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        'categories' => array(
            9,
            14
        ),
        'images' => array(
            array(
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
                'position' => 0
            ),
            array(
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-back.jpg',
                'position' => 1
            ),
            array(
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
                'position' => 2
            ),
            array(
                'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-back.jpg',
                'position' => 3
            )
        ),
        'attributes' => array(
            array(
                'name' => 'Color',
                'slug' => 'color',
                'position' => '0',
                'visible' => False,
                'variation' => True,
                'options' => array(
                    'Black',
                    'Green'
                )
            )
        ),
        'default_attributes' => array(
            array(
                'name' => 'Color',
                'slug' => 'color',
                'option' => 'Black'
            )
        ),
        'variations' => array(
            array(
                'regular_price' => '19.99',
                'image' => array(
                    array(
                        'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-black-front.jpg',
                        'position' => 0
                    )
                ),
                'attributes' => array(
                    array(
                        'name' => 'Color',
                        'slug' => 'color',
                        'option' => 'black'
                    )
                )
            ),
            array(
                'regular_price' => '19.99',
                'image' => array(
                    array(
                        'src' => 'http://example.com/wp-content/uploads/2015/01/ship-your-idea-green-front.jpg',
                        'position' => 0
                    )
                ),
                'attributes' => array(
                    array(
                        'name' => 'Color',
                        'slug' => 'color',
                        'option' => 'green'
                    )
                )
            )
        )
    )
);

print_r($woocommerce->products->create($data));
?>
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
    "parent": []
  }
}
```

## View A Product ##

This API lets you retrieve and view a specific product by ID or sku.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/products/&lt;id&gt;</h6>
	</div>
</div>

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/products/sku/&lt;sku&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/products/546 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/546', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.get("products/546").json())
```

```php
<?php print_r($woocommerce->products->get(546)); ?>
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
    "parent": []
  }
}
```

## View List Of Products ##

This API helps you to view all the products.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/products</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/products \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.get("products").json())
```

```php
<?php print_r($woocommerce->products->get()); ?>
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
      "parent": []
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
      "parent": []
    }
  ]
}
```

#### Available Filters ####

|   Filter   |  Type  |                 Description                  |
| ---------- | ------ | -------------------------------------------- |
| `type`     | string | Products by type. eg: `simple` or `variable` |
| `category` | string | Products by category.                        |
| `sku`      | string | Filter a product by SKU.                     |

## Update A Product ##

This API lets you make changes to a product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v2/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v2/products/546 \
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

```python
data = {
    "product": {
        "regular_price": "24.54"
    }
}

print(wcapi.put("products/546", data).json())
```

```php
<?php
$data = array(
    'product' => array(
        'regular_price': '24.54'
    )
);

print_r($woocommerce->products->update(546, $data));
?>
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
    "parent": []
  }
}
```

## Delete A Product ##

This API helps you delete a product.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v2/products/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v2/products/546/?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('products/546/?force=true', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.delete("products/546/?force=true").json())
```

```php
<?php print_r($woocommerce->products->delete(546, true)); ?>
```

```ruby
woocommerce.delete("products/546").parsed_response
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
		<h6>/wc-api/v2/products/count</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/products/count \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/count', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.get("products/count").json())
```

```php
<?php print_r($woocommerce->products->get_count()); ?>
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

|   Filter   |  Type  |                 Description                  |
| ---------- | ------ | -------------------------------------------- |
| `type`     | string | Products by type. eg: `simple` or `variable` |
| `category` | string | Products by category.                        |

## View List Of Product Reviews ##

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/products/&lt;id&gt;/reviews</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/products/546/reviews \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('products/546/reviews', function(err, data, res) {
  console.log(res);
});
```

```python
print(wcapi.get("products/546/reviews").json())
```

```php
<?php print_r($woocommerce->products->get_reviews(546)); ?>
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

## View A Product Category ##

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/products/categories/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/products/categories/9 \
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

```php
<?php print_r($woocommerce->products->get_categories(9)); ?>
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

### Product Category Properties ###

|   Attribute   |   Type  |                                                                       Description                                                                       |
| ------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`          | integer | Category ID (term ID) <i class="label label-info">read-only</i>                                                                                         |
| `name`        | string  | Category Name <i class="label label-info">read-only</i>                                                                                                 |
| `slug`        | string  | Category slug <i class="label label-info">read-only</i>                                                                                                 |
| `parent`      | integer | Category parent <i class="label label-info">read-only</i>                                                                                               |
| `description` | string  | Category description <i class="label label-info">read-only</i>                                                                                          |
| `display`     | string  | Category archive display type, the types available include: `default`, `products`, `subcategories` and `both` <i class="label label-info">read-only</i> |
| `image`       | string  | Category image URL <i class="label label-info">read-only</i>                                                                                            |
| `count`       | integer | Shows the quantity of products in this category <i class="label label-info">read-only</i>                                                               |

## View List Of Product Categories ##

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

```php
<?php print_r($woocommerce->products->get_categories()); ?>
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
