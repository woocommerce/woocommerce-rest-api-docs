# Coupons #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate coupons.

## Coupon Properties ##

|           Attribute            |   Type  |                                                        Description                                                         |
|--------------------------------|---------|----------------------------------------------------------------------------------------------------------------------------|
| `id`                           | integer | Coupon ID (post ID) <i class="label label-info">read-only</i>                                                              |
| `code`                         | string  | Coupon code, always lowercase <i class="label label-info">mandatory</i>                                                    |
| `type`                         | string  | Coupon type, valid core types are: `fixed_cart`, `percent`, `fixed_product` and `percent_product`. Default is `fixed_cart` |
| `created_at`                   | string  | UTC DateTime when the coupon was created <i class="label label-info">read-only</i>                                         |
| `updated_at`                   | string  | UTC DateTime when the coupon was last updated <i class="label label-info">read-only</i>                                    |
| `amount`                       | string  | The amount of discount                                                                                                     |
| `individual_use`               | boolean | Whether coupon can only be used individually                                                                               |
| `product_ids`                  | array   | Array of product ID's the coupon can be used on                                                                            |
| `exclude_product_ids`          | array   | Array of product ID's the coupon cannot be used on                                                                         |
| `usage_limit`                  | integer | How many times the coupon can be used                                                                                      |
| `usage_limit_per_user`         | integer | How many times the coupon can be user per customer                                                                         |
| `limit_usage_to_x_items`       | integer | Max number of items in the cart the coupon can be applied to                                                               |
| `usage_count`                  | integer | Number of times the coupon has been used already <i class="label label-info">read-only</i>                                 |
| `expiry_date`                  | string  | UTC DateTime`when the coupon expires                                                                                       |
| `enable_free_shipping`         | boolean | Is the coupon for free shipping                                                                                            |
| `product_category_ids`         | array   | Array of category ID's the coupon applies to                                                                               |
| `exclude_product_category_ids` | array   | Array of category ID's the coupon does not apply to                                                                        |
| `exclude_sale_items`           | boolean | Exclude sale items from the coupon                                                                                         |
| `minimum_amount`               | string  | Minimum order amount that needs to be in the cart before coupon applies                                                    |
| `maximum_amount`               | string  | Maximum order amount allowed when using the coupon                                                                         |
| `customer_emails`              | array   | Array of email addresses that can use this coupon                                                                          |
| `description`                  | string  | Coupon description                                                                                                         |

## Create a Coupon ##

This API helps you to create a new coupon.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/coupons</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/coupons \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "coupon": {
    "code": "new-coupon",
    "type": "percent",
    "amount": 10,
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": "",
    "usage_limit_per_user": "",
    "limit_usage_to_x_items": "",
    "expiry_date": "",
    "enable_free_shipping": false,
    "product_category_ids": [],
    "exclude_product_category_ids": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "customer_emails": [],
    "description": ""
  }
}'
```

```javascript
var data = {
  coupon: {
    code: 'new-coupon',
    type: 'percent',
    amount: 10,
    individual_use: true,
    product_ids: [],
    exclude_product_ids: [],
    usage_limit: '',
    usage_limit_per_user: '',
    limit_usage_to_x_items: '',
    expiry_date: '',
    enable_free_shipping: false,
    product_category_ids: [],
    exclude_product_category_ids: [],
    exclude_sale_items: true,
    minimum_amount: '100.00',
    maximum_amount: '0.00',
    customer_emails: [],
    description: ''
  }
};

WooCommerce.post('coupons', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'coupon' => [
        'code' => 'new-coupon',
        'type' => 'percent',
        'amount' => 10,
        'individual_use' => true,
        'product_ids' => [],
        'exclude_product_ids' => [],
        'usage_limit' => '',
        'usage_limit_per_user' => '',
        'limit_usage_to_x_items' => '',
        'expiry_date' => '',
        'enable_free_shipping' => false,
        'product_category_ids' => [],
        'exclude_product_category_ids' => [],
        'exclude_sale_items' => true,
        'minimum_amount' => '100.00',
        'maximum_amount' => '0.00',
        'customer_emails' => [],
        'description' => ''
    ]
];

print_r($woocommerce->post('coupons', $data));
?>
```

```python
data = {
    "coupon": {
        "code": "new-coupon",
        "type": "percent",
        "amount": 10,
        "individual_use": True,
        "product_ids": [],
        "exclude_product_ids": [],
        "usage_limit": "",
        "usage_limit_per_user": "",
        "limit_usage_to_x_items": "",
        "expiry_date": "",
        "enable_free_shipping": False,
        "product_category_ids": [],
        "exclude_product_category_ids": [],
        "exclude_sale_items": True,
        "minimum_amount": "100.00",
        "maximum_amount": "0.00",
        "customer_emails": [],
        "description": ""
    }
}

print(wcapi.post("coupons", data).json())
```

```ruby
data = {
  coupon: {
    code: "new-coupon",
    type: "percent",
    amount: 10,
    individual_use: true,
    product_ids: [],
    exclude_product_ids: [],
    usage_limit: "",
    usage_limit_per_user: "",
    limit_usage_to_x_items: "",
    expiry_date: "",
    enable_free_shipping: false,
    product_category_ids: [],
    exclude_product_category_ids: [],
    exclude_sale_items: true,
    minimum_amount: "100.00",
    maximum_amount: "0.00",
    customer_emails: [],
    description: ""
  }
}

woocommerce.post("coupons", data).parsed_response
```

> JSON response example:

```json
{
  "coupon": {
    "id": 529,
    "code": "new-coupon",
    "type": "percent",
    "created_at": "2015-01-20T19:05:27Z",
    "updated_at": "2015-01-20T19:05:27Z",
    "amount": "10.00",
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": 0,
    "usage_count": 0,
    "expiry_date": null,
    "enable_free_shipping": false,
    "product_category_ids": [],
    "exclude_product_category_ids": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "customer_emails": [],
    "description": ""
  }
}
```

## View a Coupon ##

This API lets you retrieve and view a specific coupon by ID or code.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/coupons/529 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('coupons/529', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('coupons/529')); ?>
```

```python
print(wcapi.get("coupons/529").json())
```

```ruby
woocommerce.get("coupons/529").parsed_response
```

> JSON response example:

```json
{
  "coupon": {
    "id": 529,
    "code": "new-coupon",
    "type": "percent",
    "created_at": "2015-01-20T19:05:27Z",
    "updated_at": "2015-01-20T19:05:27Z",
    "amount": "10.00",
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": 0,
    "usage_count": 0,
    "expiry_date": null,
    "enable_free_shipping": false,
    "product_category_ids": [],
    "exclude_product_category_ids": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "customer_emails": [],
    "description": ""
  }
}
```

## View List of Coupons ##

This API helps you to view all the coupons.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/coupons</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/coupons \
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
{
  "coupons": [
    {
      "id": 529,
      "code": "new-coupon",
      "type": "percent",
      "created_at": "2015-01-20T19:05:27Z",
      "updated_at": "2015-01-20T19:05:27Z",
      "amount": "10.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": null,
      "enable_free_shipping": false,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": ""
    },
    {
      "id": 527,
      "code": "free-shipping",
      "type": "fixed_cart",
      "created_at": "2015-01-20T18:35:59Z",
      "updated_at": "2015-01-20T18:35:59Z",
      "amount": "0.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": null,
      "enable_free_shipping": true,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "50.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": ""
    },
    {
      "id": 526,
      "code": "christmas-promo",
      "type": "percent",
      "created_at": "2015-01-20T18:10:58Z",
      "updated_at": "2015-01-20T18:10:58Z",
      "amount": "10.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": 1,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": "2014-12-25T00:00:00Z",
      "enable_free_shipping": false,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "200.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": "Discount for Christmas for orders over $ 200"
    }
  ]
}
```

## Update a Coupon ##

This API lets you make changes to a coupon.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/coupons/529 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "coupon": {
    "amount": 5
  }
}'
```

```javascript
var data = {
  coupon: {
    amount: 5
  }
};

WooCommerce.put('coupons/529', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'coupon' => [
        'amount' => 5
    ]
];

print_r($woocommerce->put('coupons/529', $data)); 
?>
```

```python
data = {
    "coupon": {
        "amount": 5
    }
}

print(wcapi.put("coupons/529", data).json())
```

```ruby
data = {
  coupon: {
    amount: 5
  }
}

woocommerce.put("coupons/529", data).parsed_response
```

> JSON response example:

```json
{
  "coupon": {
    "id": 529,
    "code": "new-coupon",
    "type": "percent",
    "created_at": "2015-01-20T19:05:27Z",
    "updated_at": "2015-01-20T19:10:33Z",
    "amount": "5.00",
    "individual_use": true,
    "product_ids": [],
    "exclude_product_ids": [],
    "usage_limit": null,
    "usage_limit_per_user": null,
    "limit_usage_to_x_items": 0,
    "usage_count": 0,
    "expiry_date": null,
    "enable_free_shipping": false,
    "product_category_ids": [],
    "exclude_product_category_ids": [],
    "exclude_sale_items": true,
    "minimum_amount": "100.00",
    "maximum_amount": "0.00",
    "customer_emails": [],
    "description": ""
  }
}
```

## Create/Update Multiple Coupons ##

This API helps you to bulk create/update multiple coupons.

To update is necessary to send objects containing IDs and to create new not just send the ID.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/coupons/bulk</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/coupons/bulk \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "coupons": [
    {
      "id": 529,
      "amount": "15.00"
    },
    {
      "id": 527,
      "minimum_amount": "55.00"
    },
    {
      "id": 526,
      "amount": "20.00"
    }
  ]
}'
```

```javascript
var data = {
  coupons: [
    {
      id: 529,
      amount: '15.00'
    },
    {
      id: 527,
      minimum_amount: '55.00'
    },
    {
      id: 526,
      amount: '20.00'
    }
  ]
};

WooCommerce.post('coupons/bulk', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'coupons' => [
        [
            'id' => 529,
            'amount' => '15.00'
        ],
        [
            'id' => 527,
            'minimum_amount' => '55.00'
        ],
        [
            'id' => 526,
            'amount': '20.00'
        ]
    ]
];

print_r($woocommerce->post('coupons/bulk', $data)); 
?>
```

```python
data = {
    "coupons": [
        {
            "id": 529,
            "amount": "15.00"
        },
        {
            "id": 527,
            "minimum_amount": "55.00"
        },
        {
            "id": 526,
            "amount": "20.00"
        }
    ]
}

print(wcapi.post("coupons/bulk", data).json())
```

```ruby
data = {
  coupons: [
    {
      id: 529,
      amount: "15.00"
    },
    {
      id: 527,
      minimum_amount: "55.00"
    },
    {
      id: 526,
      amount: "20.00"
    }
  ]
}

woocommerce.post("coupons/bulk", data).parsed_response
```

> JSON response example:

```json
{
  "coupons": [
    {
      "id": 529,
      "code": "new-coupon",
      "type": "percent",
      "created_at": "2015-01-20T19:05:27Z",
      "updated_at": "2015-07-31T12:10:33Z",
      "amount": "15.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": null,
      "enable_free_shipping": false,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "100.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": ""
    },
    {
      "id": 527,
      "code": "free-shipping",
      "type": "fixed_cart",
      "created_at": "2015-01-20T18:35:59Z",
      "updated_at": "2015-07-31T12:10:33Z",
      "amount": "0.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": null,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": null,
      "enable_free_shipping": true,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "55.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": ""
    },
    {
      "id": 526,
      "code": "christmas-promo",
      "type": "percent",
      "created_at": "2015-01-20T18:10:58Z",
      "updated_at": "2015-07-31T12:10:33Z",
      "amount": "20.00",
      "individual_use": true,
      "product_ids": [],
      "exclude_product_ids": [],
      "usage_limit": null,
      "usage_limit_per_user": 1,
      "limit_usage_to_x_items": 0,
      "usage_count": 0,
      "expiry_date": "2015-12-25T00:00:00Z",
      "enable_free_shipping": false,
      "product_category_ids": [],
      "exclude_product_category_ids": [],
      "exclude_sale_items": true,
      "minimum_amount": "200.00",
      "maximum_amount": "0.00",
      "customer_emails": [],
      "description": "Discount for Christmas for orders over $ 200"
    }
  ]
}
```

## Delete a Coupon ##

This API helps you delete a coupon.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/coupons/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/coupons/529/?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('coupons/529/?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('coupons/529', ['force' => true])); ?>
```

```python
print(wcapi.delete("coupons/529?force=true").json())
```

```ruby
woocommerce.delete("coupons/529", force: true).parsed_response
```

> JSON response example:

```json
{
  "message": "Permanently deleted coupon"
}
```

### Parameters ###

| Parameter |  Type  |                                                                          Description                                                                           |
| --------- | ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `force`   | string | Use `true` whether to permanently delete the coupon, defaults to `false`. Note that permanently deleting the coupon will return HTTP 200 rather than HTTP 202. |

## View Coupons Count ##

This API lets you retrieve a count of all coupons.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/coupons/count</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/coupons/count \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('coupons/count', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('coupons/count')); ?>
```

```python
print(wcapi.get("coupons/count").json())
```

```ruby
woocommerce.get("coupons/count").parsed_response
```

> JSON response example:

```json
{
  "count": 3
}
```
