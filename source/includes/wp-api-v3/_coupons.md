# Coupons #

The coupons API allows you to create, view, update, and delete individual, or a batch, of coupon codes.

## Coupon properties ##

| Attribute                     | Type      | Description                                                                                                                          |
| ----------------------------- | --------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| `id`                          | integer   | Unique identifier for the object. <i class="label label-info">read-only</i>                                                          |
| `code`                        | string    | Coupon code. <i class="label label-info">mandatory</i>                                                                               |
| `amount`                      | string    | The amount of discount. Should always be numeric, even if setting a percentage.                                                      |
| `date_created`                | date-time | The date the coupon was created, in the site's timezone. <i class="label label-info">read-only</i>                                   |
| `date_created_gmt`            | date-time | The date the coupon was created, as GMT. <i class="label label-info">read-only</i>                                                   |
| `date_modified`               | date-time | The date the coupon was last modified, in the site's timezone. <i class="label label-info">read-only</i>                             |
| `date_modified_gmt`           | date-time | The date the coupon was last modified, as GMT. <i class="label label-info">read-only</i>                                             |
| `discount_type`               | string    | Determines the type of discount that will be applied. Options: `percent`, `fixed_cart` and `fixed_product`. Default is `fixed_cart`. |
| `description`                 | string    | Coupon description.                                                                                                                  |
| `date_expires`                | string    | The date the coupon expires, in the site's timezone.                                                                                 |
| `date_expires_gmt`            | string    | The date the coupon expires, as GMT.                                                                                                 |
| `usage_count`                 | integer   | Number of times the coupon has been used already. <i class="label label-info">read-only</i>                                          |
| `individual_use`              | boolean   | If true, the coupon can only be used individually. Other applied coupons will be removed from the cart. Default is `false`.          |
| `product_ids`                 | array     | List of product IDs the coupon can be used on.                                                                                       |
| `excluded_product_ids`        | array     | List of product IDs the coupon cannot be used on.                                                                                    |
| `usage_limit`                 | integer   | How many times the coupon can be used in total.                                                                                      |
| `usage_limit_per_user`        | integer   | How many times the coupon can be used per customer.                                                                                  |
| `limit_usage_to_x_items`      | integer   | Max number of items in the cart the coupon can be applied to.                                                                        |
| `free_shipping`               | boolean   | If true and if the free shipping method requires a coupon, this coupon will enable free shipping. Default is `false`.                |
| `product_categories`          | array     | List of category IDs the coupon applies to.                                                                                          |
| `excluded_product_categories` | array     | List of category IDs the coupon does not apply to.                                                                                   |
| `exclude_sale_items`          | boolean   | If true, this coupon will not be applied to items that have sale prices. Default is `false`.                                         |
| `minimum_amount`              | string    | Minimum order amount that needs to be in the cart before coupon applies.                                                             |
| `maximum_amount`              | string    | Maximum order amount allowed when using the coupon.                                                                                  |
| `email_restrictions`          | array     | List of email addresses that can use this coupon.                                                                                    |
| `used_by`                     | array     | List of user IDs (or guest email addresses) that have used the coupon. <i class="label label-info">read-only</i>                     |
| `meta_data`                   | array     | Meta data. See [Coupon - Meta data properties](#coupon-meta-data-properties)                                                         |

### Coupon - Meta data properties ###

| Attribute | Type    | Description                                        |
| --------- | ------- | -------------------------------------------------- |
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

## Create a coupon ##

This API helps you to create a new coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/coupons</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v3/coupons \
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
const data = {
  code: "10off",
  discount_type: "percent",
  amount: "10",
  individual_use: true,
  exclude_sale_items: true,
  minimum_amount: "100.00"
};

WooCommerce.post("coupons", data)
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
  "id": 719,
  "code": "10off",
  "amount": "10.00",
  "date_created": "2017-03-21T15:23:00",
  "date_created_gmt": "2017-03-21T18:23:00",
  "date_modified": "2017-03-21T15:23:00",
  "date_modified_gmt": "2017-03-21T18:23:00",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "date_expires_gmt": null,
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
        "href": "https://example.com/wp-json/wc/v3/coupons/719"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/coupons"
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
		<h6>/wp-json/wc/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/coupons/719 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("coupons/719")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('coupons/719')); ?>
```

```python
print(wcapi.get("coupons/719").json())
```

```ruby
woocommerce.get("coupons/719").parsed_response
```

> JSON response example:

```json
{
  "id": 719,
  "code": "10off",
  "amount": "10.00",
  "date_created": "2017-03-21T15:23:00",
  "date_created_gmt": "2017-03-21T18:23:00",
  "date_modified": "2017-03-21T15:23:00",
  "date_modified_gmt": "2017-03-21T18:23:00",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "date_expires_gmt": null,
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
        "href": "https://example.com/wp-json/wc/v3/coupons/719"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/coupons"
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
		<h6>/wp-json/wc/v3/coupons</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/coupons \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("coupons")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
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
    "id": 720,
    "code": "free shipping",
    "amount": "0.00",
    "date_created": "2017-03-21T15:25:02",
    "date_created_gmt": "2017-03-21T18:25:02",
    "date_modified": "2017-03-21T15:25:02",
    "date_modified_gmt": "2017-03-21T18:25:02",
    "discount_type": "fixed_cart",
    "description": "",
    "date_expires": null,
    "date_expires_gmt": null,
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
          "href": "https://example.com/wp-json/wc/v3/coupons/720"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/coupons"
        }
      ]
    }
  },
  {
    "id": 719,
    "code": "10off",
    "amount": "10.00",
    "date_created": "2017-03-21T15:23:00",
    "date_created_gmt": "2017-03-21T18:23:00",
    "date_modified": "2017-03-21T15:23:00",
    "date_modified_gmt": "2017-03-21T18:23:00",
    "discount_type": "percent",
    "description": "",
    "date_expires": null,
    "date_expires_gmt": null,
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
          "href": "https://example.com/wp-json/wc/v3/coupons/719"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/coupons"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter       | Type    | Description                                                                                                                  |
| --------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `context`       | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`. |
| `page`          | integer | Current page of the collection. Default is `1`.                                                                              |
| `per_page`      | integer | Maximum number of items to be returned in result set. Default is `10`.                                                       |
| `search`        | string  | Limit results to those matching a string.                                                                                    |
| `after`         | string  | Limit response to resources published after a given ISO8601 compliant date.                                                  |
| `before`        | string  | Limit response to resources published before a given ISO8601 compliant date.                                                 |
| `dates_are_gmt` | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                     |
| `exclude`       | array   | Ensure result set excludes specific IDs.                                                                                     |
| `include`       | array   | Limit result set to specific ids.                                                                                            |
| `offset`        | integer | Offset the result set by a specific number of items.                                                                         |
| `order`         | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                  |
| `orderby`       | string  | Sort collection by object attribute. Options: `date`, `id`, `include`, `title` and `slug`. Default is `date`.                |
| `code`          | string  | Limit result set to resources with a specific code.                                                                          |

## Update a coupon ##

This API lets you make changes to a coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v3/coupons/719 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "amount": "5"
}'
```

```javascript
const data = {
  amount: "5"
};

WooCommerce.put("coupons/719", data)
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
    'amount' => '5'
];

print_r($woocommerce->put('coupons/719', $data)); 
?>
```

```python
data = {
    "amount": "5"
}

print(wcapi.put("coupons/719", data).json())
```

```ruby
data = {
  amount: "5"
}

woocommerce.put("coupons/719", data).parsed_response
```

> JSON response example:

```json
{
  "id": 719,
  "code": "10off",
  "amount": "5.00",
  "date_created": "2017-03-21T15:23:00",
  "date_created_gmt": "2017-03-21T18:23:00",
  "date_modified": "2017-03-21T15:26:16",
  "date_modified_gmt": "2017-03-21T18:26:16",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "date_expires_gmt": null,
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
        "href": "https://example.com/wp-json/wc/v3/coupons/719"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/coupons"
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
		<h6>/wp-json/wc/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v3/coupons/719?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("coupons/719", {
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
<?php print_r($woocommerce->delete('coupons/719', ['force' => true])); ?>
```

```python
print(wcapi.delete("coupons/719", params={"force": True}).json())
```

```ruby
woocommerce.delete("coupons/719", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 719,
  "code": "10off",
  "amount": "5.00",
  "date_created": "2017-03-21T15:23:00",
  "date_created_gmt": "2017-03-21T18:23:00",
  "date_modified": "2017-03-21T15:26:16",
  "date_modified_gmt": "2017-03-21T18:26:16",
  "discount_type": "percent",
  "description": "",
  "date_expires": null,
  "date_expires_gmt": null,
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
        "href": "https://example.com/wp-json/wc/v3/coupons/719"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/coupons"
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

<aside class="notice">
Note: By default it's limited to up to 100 objects to be created, updated or deleted. 
</aside>

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/coupons/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com//wp-json/wc/v3/coupons/batch \
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
      "id": 719,
      "minimum_amount": "50.00"
    }
  ],
  "delete": [
    720
  ]
}'
```

```javascript
const data = {
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
      id: 719,
      minimum_amount: "50.00"
    }
  ],
  delete: [
    720
  ]
};

WooCommerce.post("coupons/batch", data)
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
            'id' => 719,
            'minimum_amount' => '50.00'
        ]
    ],
    'delete' => [
        720
    ]
];

print_r($woocommerce->post('coupons/batch', $data));
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
            "id": 719,
            "minimum_amount": "50.00"
        }
    ],
    "delete": [
        720
    ]
}

print(wcapi.post("coupons/batch", data).json())
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
      id: 719,
      minimum_amount: "50.00"
    }
  ],
  delete: [
    720
  ]
}

woocommerce.post("coupons/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 721,
      "code": "20off",
      "amount": "20.00",
      "date_created": "2017-03-21T15:27:29",
      "date_created_gmt": "2017-03-21T18:27:29",
      "date_modified": "2017-03-21T15:27:29",
      "date_modified_gmt": "2017-03-21T18:27:29",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "date_expires_gmt": null,
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
            "href": "https://example.com/wp-json/wc/v3/coupons/721"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/coupons"
          }
        ]
      }
    },
    {
      "id": 722,
      "code": "30off",
      "amount": "30.00",
      "date_created": "2017-03-21T15:27:31",
      "date_created_gmt": "2017-03-21T18:27:31",
      "date_modified": "2017-03-21T15:27:31",
      "date_modified_gmt": "2017-03-21T18:27:31",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "date_expires_gmt": null,
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
            "href": "https://example.com/wp-json/wc/v3/coupons/722"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/coupons"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 719,
      "code": "10off",
      "amount": "5.00",
      "date_created": "2017-03-21T15:23:00",
      "date_created_gmt": "2017-03-21T18:23:00",
      "date_modified": "2017-03-21T15:27:32",
      "date_modified_gmt": "2017-03-21T18:27:32",
      "discount_type": "percent",
      "description": "",
      "date_expires": null,
      "date_expires_gmt": null,
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
            "href": "https://example.com/wp-json/wc/v3/coupons/719"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/coupons"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 720,
      "code": "free shipping",
      "amount": "0.00",
      "date_created": "2017-03-21T15:25:02",
      "date_created_gmt": "2017-03-21T18:25:02",
      "date_modified": "2017-03-21T15:25:02",
      "date_modified_gmt": "2017-03-21T18:25:02",
      "discount_type": "fixed_cart",
      "description": "",
      "date_expires": null,
      "date_expires_gmt": null,
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
            "href": "https://example.com/wp-json/wc/v3/coupons/720"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/coupons"
          }
        ]
      }
    }
  ]
}
```
