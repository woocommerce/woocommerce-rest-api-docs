# Coupons #

The coupons API allows you to create, view, update, and delete individual, or a batch, of coupon codes.

## Coupon properties ##

|           Attribute           |    Type   |                                                            Description                                                             |
|-------------------------------|-----------|------------------------------------------------------------------------------------------------------------------------------------|
| `id`                          | integer   | Unique identifier for the object. <i class="label label-info">read-only</i>                                                        |
| `code`                        | string    | Coupon code. <i class="label label-info">mandatory</i>                                                                             |
| `amount`                      | string    | The amount of discount.                                                                                                            |
| `date_created`                | date-time | The date the coupon was created, in the site's timezone. <i class="label label-info">read-only</i>                                 |
| `date_modified`               | date-time | The date the coupon was last modified, in the site's timezone. <i class="label label-info">read-only</i>                           |
| `discount_type`               | string    | Determines the type of discount that will be applied. Options: `fixed_cart`, `percent` and `fixed_product`. Default: `fixed_cart`. |
| `description`                 | string    | Coupon description.                                                                                                                |
| `date_expires`                | string    | UTC DateTime when the coupon expires.                                                                                              |
| `usage_count`                 | integer   | Number of times the coupon has been used already. <i class="label label-info">read-only</i>                                        |
| `individual_use`              | boolean   | Whether coupon can only be used individually.                                                                                      |
| `product_ids`                 | array     | List of product ID's the coupon can be used on.                                                                                    |
| `excluded_product_ids`        | array     | List of product ID's the coupon cannot be used on.                                                                                 |
| `usage_limit`                 | integer   | How many times the coupon can be used.                                                                                             |
| `usage_limit_per_user`        | integer   | How many times the coupon can be used per customer.                                                                                |
| `limit_usage_to_x_items`      | integer   | Max number of items in the cart the coupon can be applied to.                                                                      |
| `free_shipping`               | boolean   | Define if can be applied for free shipping.                                                                                        |
| `product_categories`          | array     | List of category ID's the coupon applies to.                                                                                       |
| `excluded_product_categories` | array     | List of category ID's the coupon does not apply to.                                                                                |
| `exclude_sale_items`          | boolean   | Define if should not apply when have sale items.                                                                                   |
| `minimum_amount`              | string    | Minimum order amount that needs to be in the cart before coupon applies.                                                           |
| `maximum_amount`              | string    | Maximum order amount allowed when using the coupon.                                                                                |
| `email_restrictions`          | array     | List of email addresses that can use this coupon.                                                                                  |
| `used_by`                     | array     | List of user IDs who have used the coupon. <i class="label label-info">read-only</i>                                               |
| `meta_data`                   | object    | List of coupon custom meta data. See [Meta data properties](#meta-data-properties)                                                 |

### Meta data properties ###

| Attribute |   Type  |                    Description                     |
|-----------|---------|----------------------------------------------------|
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

## Create a coupon ##

This API helps you to create a new coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/coupons</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/coupons \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "code": "10off",
  "discount_type": "percent",
  "amount": "10",
  "individual_use": true,
  "exclude_sale_items": true,
  "minimum_amount": "100.00"
}'
```

```javascript
var data = {
  code: '10off',
  discount_type: 'percent',
  amount: '10',
  individual_use: true,
  exclude_sale_items: true,
  minimum_amount: '100.00'
};

WooCommerce.post('coupons', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'code' => '10off',
    'discount_type' => 'percent',
    'amount' => '10',
    'individual_use' => true,
    'exclude_sale_items' => true,
    'minimum_amount' => '100.00'
];

print_r($woocommerce->post('coupons', $data));
?>
```

```python
data = {
    "code": "10off",
    "discount_type": "percent",
    "amount": "10",
    "individual_use": True,
    "exclude_sale_items": True,
    "minimum_amount": "100.00"
}

print(wcapi.post("coupons", data).json())
```

```ruby
data = {
  code: "10off",
  discount_type: "percent",
  amount: "10",
  individual_use: true,
  exclude_sale_items: true,
  minimum_amount: "100.00"
}

woocommerce.post("coupons", data).parsed_response
```

> JSON response example:

```json
{
  "id": 690,
  "code": "10off",
  "amount": "10.00",
  "date_created": "2017-03-06T20:49:12",
  "date_modified": "2017-03-06T20:49:12",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "excluded_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": null,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons/690"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons"
      }
    ]
  }
}
```

## Retrieve a coupon ##

This API lets you retrieve and view a specific coupon by ID.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/coupons/690 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('coupons/690', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('coupons/690')); ?>
```

```python
print(wcapi.get("coupons/690").json())
```

```ruby
woocommerce.get("coupons/690").parsed_response
```

> JSON response example:

```json
{
  "id": 690,
  "code": "10off",
  "amount": "10.00",
  "date_created": "2017-03-06T20:49:12",
  "date_modified": "2017-03-06T20:49:12",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "excluded_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": null,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons/690"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons"
      }
    ]
  }
}
```

## List all coupons ##

This API helps you to list all the coupons that have been created.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/coupons</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/coupons \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('coupons', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('coupons')); ?>
```

```python
print(wcapi.get("coupons").json())
```

```ruby
woocommerce.get("coupons").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 691,
    "code": "free shipping",
    "amount": "0.00",
    "date_created": "2017-03-06T20:57:59",
    "date_modified": "2017-03-06T20:58:07",
    "discount_type": "percent",
    "description": "",
    "date_expires": null,
    "usage_count": 0,
    "individual_use": true,
    "product_ids": [],
    "excluded_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": null,
    "free_shipping": true,
    "product_categories": [],
    "excluded_product_categories": [],
    "exclude_sale_items": false,
    "minimum_amount": "0.00",
    "maximum_amount": "0.00",
    "email_restrictions": [],
    "used_by": [],
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/coupons/691"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/coupons"
        }
      ]
    }
  },
  {
    "id": 690,
    "code": "10off",
    "amount": "10.00",
    "date_created": "2017-03-06T20:49:12",
    "date_modified": "2017-03-06T20:49:12",
    "discount_type": "percent",
    "description": "",
    "date_expires": null,
    "usage_count": 0,
    "individual_use": true,
    "product_ids": [],
    "excluded_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": null,
    "free_shipping": false,
    "product_categories": [],
    "excluded_product_categories": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "email_restrictions": [],
    "used_by": [],
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/coupons/690"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/coupons"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter  |   Type  |                                                  Description                                                  |
|------------|---------|---------------------------------------------------------------------------------------------------------------|
| `context`  | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.     |
| `page`     | integer | Current page of the collection.                                                                               |
| `per_page` | integer | Maximum number of items to be returned in result set.                                                         |
| `search`   | string  | Limit results to those matching a string.                                                                     |
| `after`    | string  | Limit response to resources published after a given ISO8601 compliant date.                                   |
| `before`   | string  | Limit response to resources published before a given ISO8601 compliant date.                                  |
| `exclude`  | string  | Ensure result set excludes specific ids.                                                                      |
| `include`  | string  | Limit result set to specific ids.                                                                             |
| `offset`   | integer | Offset the result set by a specific number of items.                                                          |
| `order`    | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                    |
| `orderby`  | string  | Sort collection by object attribute. Default is `date`, Options: `date`, `id`, `include`, `title` and `slug`. |
| `code`     | string  | Limit result set to resources with a specific code.                                                           |

## Update a coupon ##

This API lets you make changes to a coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/coupons/690 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "amount": "5"
}'
```

```javascript
var data = {
  amount: '5'
};

WooCommerce.put('coupons/690', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'amount' => '5'
];

print_r($woocommerce->put('coupons/690', $data)); 
?>
```

```python
data = {
    "amount": "5"
}

print(wcapi.put("coupons/690", data).json())
```

```ruby
data = {
  amount: "5"
}

woocommerce.put("coupons/690", data).parsed_response
```

> JSON response example:

```json
{
  "id": 690,
  "code": "10off",
  "amount": "5.00",
  "date_created": "2017-03-06T20:49:12",
  "date_modified": "2017-03-06T21:00:34",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "excluded_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": null,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons/690"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons"
      }
    ]
  }
}
```

## Delete a coupon ##

This API helps you delete a coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v2/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v2/coupons/690?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('coupons/690?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('coupons/690', ['force' => true])); ?>
```

```python
print(wcapi.delete("coupons/690?force=true").json())
```

```ruby
woocommerce.delete("coupons/690", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 690,
  "code": "10off",
  "amount": "5.00",
  "date_created": "2017-03-06T20:49:12",
  "date_modified": "2017-03-06T21:00:34",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "excluded_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": null,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons/690"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/coupons"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                               Description                                |
|-----------|--------|--------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the coupon, Default is `false`. |

## Batch update coupons ##

This API helps you to batch create, update and delete multiple coupons.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/coupons/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com//wp-json/wc/v2/coupons/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "code": "20off",
      "discount_type": "percent",
      "amount": "20",
      "individual_use": true,
      "exclude_sale_items": true,
      "minimum_amount": "100.00"
    },
    {
      "code": "30off",
      "discount_type": "percent",
      "amount": "30",
      "individual_use": true,
      "exclude_sale_items": true,
      "minimum_amount": "100.00"
    }
  ],
  "update": [
    {
      "id": 690,
      "minimum_amount": "50.00"
    }
  ],
  "delete": [
    691
  ]
}'
```

```javascript
var data = {
  create: [
    {
      code: '20off',
      discount_type: 'percent',
      amount: '20',
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: '100.00'
    },
    {
      code: '30off',
      discount_type: 'percent',
      amount: '30',
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: '100.00'
    }
  ],
  update: [
    {
      id: 690,
      minimum_amount: '50.00'
    }
  ],
  delete: [
    691
  ]
};

WooCommerce.post('customers/batch', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'create' => [
        [
            'code' => '20off',
            'discount_type' => 'percent',
            'amount' => '20',
            'individual_use' => true,
            'exclude_sale_items' => true,
            'minimum_amount' => '100.00'
        ],
        [
            'code' => '30off',
            'discount_type' => 'percent',
            'amount' => '30',
            'individual_use' => true,
            'exclude_sale_items' => true,
            'minimum_amount' => '100.00'
        ]
    ],
    'update' => [
        [
            'id' => 690,
            'minimum_amount' => '50.00'
        ]
    ],
    'delete' => [
        691
    ]
];

print_r($woocommerce->post('customers/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "code": "20off",
            "discount_type": "percent",
            "amount": "20",
            "individual_use": True,
            "exclude_sale_items": True,
            "minimum_amount": "100.00"
        },
        {
            "code": "30off",
            "discount_type": "percent",
            "amount": "30",
            "individual_use": True,
            "exclude_sale_items": True,
            "minimum_amount": "100.00"
        }
    ],
    "update": [
        {
            "id": 690,
            "minimum_amount": "50.00"
        }
    ],
    "delete": [
        691
    ]
}

print(wcapi.post("customers/batch", data).json())
```

```ruby
data = {
  create: [
    {
      code: "20off",
      discount_type: "percent",
      amount: "20",
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    },
    {
      code: "30off",
      discount_type: "percent",
      amount: "30",
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    }
  ],
  update: [
    {
      id: 690,
      minimum_amount: "50.00"
    }
  ],
  delete: [
    691
  ]
}

woocommerce.post("customers/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 692,
      "code": "20off",
      "amount": "20.00",
      "date_created": "2017-03-06T21:03:48",
      "date_modified": "2017-03-06T21:03:48",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "excluded_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": null,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons/692"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons"
          }
        ]
      }
    },
    {
      "id": 693,
      "code": "30off",
      "amount": "30.00",
      "date_created": "2017-03-06T21:03:49",
      "date_modified": "2017-03-06T21:03:49",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "excluded_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": null,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons/693"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 690,
      "code": "10off",
      "amount": "5.00",
      "date_created": "2017-03-06T20:49:12",
      "date_modified": "2017-03-06T21:03:50",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "excluded_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": null,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "50.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons/690"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 691,
      "code": "free shipping",
      "amount": "0.00",
      "date_created": "2017-03-06T20:57:59",
      "date_modified": "2017-03-06T20:58:07",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "excluded_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": null,
      "free_shipping": true,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": false,
      "minimum_amount": "0.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons/691"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/coupons"
          }
        ]
      }
    }
  ]
}
```
