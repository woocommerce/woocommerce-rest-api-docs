# Coupons #

The coupons API allows you to create, view, update, and delete individual, or a batch, of coupon codes.

## Coupon properties ##

|           Attribute           |    Type   |                                                                      Description                                                                      |
|-------------------------------|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                          | integer   | Unique identifier for the object. <i class="label label-info">read-only</i>                                                                           |
| `code`                        | string    | Coupon code. <i class="label label-info">mandatory</i>                                                                                                |
| `date_created`                | date-time | The date the coupon was created, in the site's timezone. <i class="label label-info">read-only</i>                                                    |
| `date_modified`               | date-time | The date the coupon was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                              |
| `description`                 | string    | Coupon description.                                                                                                                                   |
| `discount_type`               | string    | Determines the type of discount that will be applied. Options: `fixed_cart`, `percent`, `fixed_product` and `percent_product`. Default: `fixed_cart`. |
| `amount`                      | string    | The amount of discount.                                                                                                                               |
| `expiry_date`                 | string    | UTC DateTime when the coupon expires.                                                                                                                 |
| `usage_count`                 | integer   | Number of times the coupon has been used already. <i class="label label-info">read-only</i>                                                           |
| `individual_use`              | boolean   | Whether coupon can only be used individually.                                                                                                         |
| `product_ids`                 | array     | List of product ID's the coupon can be used on.                                                                                                       |
| `exclude_product_ids`         | array     | List of product ID's the coupon cannot be used on.                                                                                                    |
| `usage_limit`                 | integer   | How many times the coupon can be used.                                                                                                                |
| `usage_limit_per_user`        | integer   | How many times the coupon can be used per customer.                                                                                                   |
| `limit_usage_to_x_items`      | integer   | Max number of items in the cart the coupon can be applied to.                                                                                         |
| `free_shipping`               | boolean   | Define if can be applied for free shipping.                                                                                                           |
| `product_categories`          | array     | List of category ID's the coupon applies to.                                                                                                          |
| `excluded_product_categories` | array     | List of category ID's the coupon does not apply to.                                                                                                   |
| `exclude_sale_items`          | boolean   | Define if should not apply when have sale items.                                                                                                      |
| `minimum_amount`              | string    | Minimum order amount that needs to be in the cart before coupon applies.                                                                              |
| `maximum_amount`              | string    | Maximum order amount allowed when using the coupon.                                                                                                   |
| `email_restrictions`          | array     | List of email addresses that can use this coupon.                                                                                                     |
| `used_by`                     | array     | List of user IDs who have used the coupon. <i class="label label-info">read-only</i>                                                                  |

## Create a coupon ##

This API helps you to create a new coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/coupons</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/coupons \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "code": "10off",
  "discount_type": "percent",
  "amount": 10,
  "individual_use": true,
  "exclude_sale_items": true,
  "minimum_amount": "100.00"
}'
```

```javascript
const data = {
  code: "10off",
  discount_type: "percent",
  amount: 10,
  individual_use: true,
  exclude_sale_items: true,
  minimum_amount: "100.00"
};

WooCommerce.get("coupons")
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
    'amount' => 10,
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
    "amount": 10,
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
  amount: 10,
  individual_use: true,
  exclude_sale_items: true,
  minimum_amount: "100.00"
}

woocommerce.post("coupons", data).parsed_response
```

> JSON response example:

```json
{
  "id": 113,
  "code": "10off",
  "date_created": "2016-04-28T21:55:54",
  "date_modified": "2016-04-28T21:55:54",
  "discount_type": "percent",
  "description": "",
  "amount": "10.00",
  "expiry_date": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "exclude_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": 0,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons/113"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons"
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
		<h6>/wp-json/wc/v1/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/coupons/113 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("coupons/113")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('coupons/113')); ?>
```

```python
print(wcapi.get("coupons/113").json())
```

```ruby
woocommerce.get("coupons/113").parsed_response
```

> JSON response example:

```json
{
  "id": 113,
  "code": "10off",
  "date_created": "2016-04-28T21:55:54",
  "date_modified": "2016-04-28T21:55:54",
  "discount_type": "percent",
  "description": "",
  "amount": "10.00",
  "expiry_date": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "exclude_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": 0,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons/113"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons"
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
		<h6>/wp-json/wc/v1/coupons</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/coupons \
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
    "id": 114,
    "code": "free-shipping",
    "date_created": "2016-04-28T21:58:25",
    "date_modified": "2016-04-28T21:58:25",
    "discount_type": "fixed_cart",
    "description": "",
    "amount": "0.00",
    "expiry_date": null,
    "usage_count": 0,
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": 0,
    "free_shipping": false,
    "product_categories": [],
    "excluded_product_categories": [],
    "exclude_sale_items": true,
    "minimum_amount": "50.00",
    "maximum_amount": "0.00",
    "email_restrictions": [],
    "used_by": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/coupons/114"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/coupons"
        }
      ]
    }
  },
  {
    "id": 113,
    "code": "10off",
    "date_created": "2016-04-28T21:55:54",
    "date_modified": "2016-04-28T21:55:54",
    "discount_type": "percent",
    "description": "",
    "amount": "10.00",
    "expiry_date": null,
    "usage_count": 0,
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": 0,
    "free_shipping": false,
    "product_categories": [],
    "excluded_product_categories": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "email_restrictions": [],
    "used_by": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/coupons/113"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/coupons"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter       |   Type  |                                                  Description                                                  |
|-----------------|---------|---------------------------------------------------------------------------------------------------------------|
| `context`       | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.     |
| `page`          | integer | Current page of the collection.                                                                               |
| `per_page`      | integer | Maximum number of items to be returned in result set.                                                         |
| `search`        | string  | Limit results to those matching a string.                                                                     |
| `after`         | string  | Limit response to resources published after a given ISO8601 compliant date.                                   |
| `before`        | string  | Limit response to resources published before a given ISO8601 compliant date.                                  |
| `dates_are_gmt` | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                      |
| `exclude`       | string  | Ensure result set excludes specific ids.                                                                      |
| `include`       | string  | Limit result set to specific ids.                                                                             |
| `offset`        | integer | Offset the result set by a specific number of items.                                                          |
| `order`         | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                    |
| `orderby`       | string  | Sort collection by object attribute. Default is `date`, Options: `date`, `id`, `include`, `title` and `slug`. |
| `code`          | string  | Limit result set to resources with a specific code.                                                           |

## Update a coupon ##

This API lets you make changes to a coupon.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v1/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v1/coupons/113 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "amount": 5
}'
```

```javascript
const data = {
  amount: 5
};

WooCommerce.put("coupons/113", data)
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
    'amount' => 5
];

print_r($woocommerce->put('coupons/113', $data)); 
?>
```

```python
data = {
    "amount": 5
}

print(wcapi.put("coupons/113", data).json())
```

```ruby
data = {
  amount: 5
}

woocommerce.put("coupons/113", data).parsed_response
```

> JSON response example:

```json
{
  "id": 113,
  "code": "10off",
  "date_created": "2016-04-28T21:55:54",
  "date_modified": "2016-04-28T22:00:49",
  "discount_type": "percent",
  "description": "",
  "amount": "5.00",
  "expiry_date": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "exclude_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": 0,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons/113"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons"
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
		<h6>/wp-json/wc/v1/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/coupons/113?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("coupons/113", {
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
<?php print_r($woocommerce->delete('coupons/113', ['force' => true])); ?>
```

```python
print(wcapi.delete("coupons/113", params={"force": True}).json())
```

```ruby
woocommerce.delete("coupons/113", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 113,
  "code": "10off",
  "date_created": "2016-04-28T21:55:54",
  "date_modified": "2016-04-28T22:00:49",
  "discount_type": "percent",
  "description": "",
  "amount": "5.00",
  "expiry_date": null,
  "usage_count": 0,
  "individual_use": true,
  "product_ids": [],
  "exclude_product_ids": [],
  "usage_limit": null,
  "usage_limit_per_user": null,
  "limit_usage_to_x_items": 0,
  "free_shipping": false,
  "product_categories": [],
  "excluded_product_categories": [],
  "exclude_sale_items": true,
  "minimum_amount": "100.00",
  "maximum_amount": "0.00",
  "email_restrictions": [],
  "used_by": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons/113"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/coupons"
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
		<h6>/wp-json/wc/v1/coupons/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com//wp-json/wc/v1/coupons/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "code": "20off",
      "discount_type": "percent",
      "amount": 20,
      "individual_use": true,
      "exclude_sale_items": true,
      "minimum_amount": "100.00"
    },
    {
      "code": "30off",
      "discount_type": "percent",
      "amount": 30,
      "individual_use": true,
      "exclude_sale_items": true,
      "minimum_amount": "100.00"
    }
  ],
  "update": [
    {
      "id": 113,
      "minimum_amount": "50.00"
    }
  ],
  "delete": [
    137
  ]
}'
```

```javascript
const data = {
  create: [
    {
      code: "20off",
      discount_type: "percent",
      amount: 20,
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    },
    {
      code: "30off",
      discount_type: "percent",
      amount: 30,
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    }
  ],
  update: [
    {
      id: 113,
      minimum_amount: "50.00"
    }
  ],
  delete: [
    137
  ]
};

WooCommerce.post("customers/batch", data)
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
            'amount' => 20,
            'individual_use' => true,
            'exclude_sale_items' => true,
            'minimum_amount' => '100.00'
        ],
        [
            'code' => '30off',
            'discount_type' => 'percent',
            'amount' => 30,
            'individual_use' => true,
            'exclude_sale_items' => true,
            'minimum_amount' => '100.00'
        ]
    ],
    'update' => [
        [
            'id' => 113,
            'minimum_amount' => '50.00'
        ]
    ],
    'delete' => [
        137
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
            "amount": 20,
            "individual_use": True,
            "exclude_sale_items": True,
            "minimum_amount": "100.00"
        },
        {
            "code": "30off",
            "discount_type": "percent",
            "amount": 30,
            "individual_use": True,
            "exclude_sale_items": True,
            "minimum_amount": "100.00"
        }
    ],
    "update": [
        {
            "id": 113,
            "minimum_amount": "50.00"
        }
    ],
    "delete": [
        137
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
      amount: 20,
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    },
    {
      code: "30off",
      discount_type: "percent",
      amount: 30,
      individual_use: true,
      exclude_sale_items: true,
      minimum_amount: "100.00"
    }
  ],
  update: [
    {
      id: 113,
      minimum_amount: "50.00"
    }
  ],
  delete: [
    137
  ]
}

woocommerce.post("customers/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 138,
      "code": "20off",
      "date_created": "2016-05-17T20:52:21",
      "date_modified": "2016-05-17T20:52:21",
      "discount_type": "percent",
      "description": "",
      "amount": "20.00",
      "expiry_date": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons/138"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons"
          }
        ]
      }
    },
    {
      "id": 139,
      "code": "30off",
      "date_created": "2016-05-17T20:52:22",
      "date_modified": "2016-05-17T20:52:22",
      "discount_type": "percent",
      "description": "",
      "amount": "30.00",
      "expiry_date": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons/139"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 113,
      "code": "10off",
      "date_created": "2016-04-28T21:55:54",
      "date_modified": "2016-05-17T20:52:23",
      "discount_type": "percent",
      "description": "",
      "amount": "5.00",
      "expiry_date": null,
      "usage_count": 0,
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": true,
      "minimum_amount": "50.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons/113"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 137,
      "code": "50off",
      "date_created": "2016-05-17T20:49:12",
      "date_modified": "2016-05-17T20:50:30",
      "discount_type": "fixed_cart",
      "description": "",
      "amount": "50.00",
      "expiry_date": null,
      "usage_count": 0,
      "individual_use": false,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "free_shipping": false,
      "product_categories": [],
      "excluded_product_categories": [],
      "exclude_sale_items": false,
      "minimum_amount": "0.00",
      "maximum_amount": "0.00",
      "email_restrictions": [],
      "used_by": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons/137"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/coupons"
          }
        ]
      }
    }
  ]
}
```
