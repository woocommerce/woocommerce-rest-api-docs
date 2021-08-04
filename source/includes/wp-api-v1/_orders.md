# Orders #

The orders API allows you to create, view, update, and delete individual, or a batch, of orders.

## Order properties ##

|       Attribute        |    Type   |                                                                             Description                                                                              |
|------------------------|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                   | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                        |
| `parent_id`            | integer   | Parent order ID.                                                                                                                                                     |
| `status`               | string    | Order status. Default is `pending`. Options (plugins may include new status): `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded` and `failed`. |
| `order_key`            | string    | Order key. <i class="label label-info">read-only</i>                                                                                                                 |
| `number`               | string    | Order number. <i class="label label-info">read-only</i>                                                                                                              |
| `currency`             | string    | Currency the order was created with, in ISO format, e.g `USD`. Default is the current store currency.                                                                |
| `version`              | string    | Version of WooCommerce when the order was made. <i class="label label-info">read-only</i>                                                                            |
| `prices_include_tax`   | boolean   | Shows if the prices included tax during checkout. <i class="label label-info">read-only</i>                                                                          |
| `date_created`         | date-time | The date the order was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                    |
| `date_modified`        | date-time | The date the order was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                              |
| `customer_id`          | integer   | User ID who owns the order. Use `0` for guests. Default is `0`.                                                                                                      |
| `discount_total`       | string    | Total discount amount for the order. <i class="label label-info">read-only</i>                                                                                       |
| `discount_tax`         | string    | Total discount tax amount for the order. <i class="label label-info">read-only</i>                                                                                   |
| `shipping_total`       | string    | Total shipping amount for the order. <i class="label label-info">read-only</i>                                                                                       |
| `shipping_tax`         | string    | Total shipping tax amount for the order. <i class="label label-info">read-only</i>                                                                                   |
| `cart_tax`             | string    | Sum of line item taxes only. <i class="label label-info">read-only</i>                                                                                               |
| `total`                | string    | Grand total. <i class="label label-info">read-only</i>                                                                                                               |
| `total_tax`            | string    | Sum of all taxes. <i class="label label-info">read-only</i>                                                                                                          |
| `billing`              | object    | Billing address. See [Customer Billing Address properties](#billing-address-properties).                                                                             |
| `shipping`             | object    | Shipping address. See [Customer Shipping Address properties](#shipping-address-properties).                                                                          |
| `payment_method`       | string    | Payment method ID.                                                                                                                                                   |
| `payment_method_title` | string    | Payment method title.                                                                                                                                                |
| `set_paid`             | boolean   | Define if the order is paid. It will set the status to processing and reduce stock items. Default is `false`. <i class="label label-info">write-only</i>             |
| `transaction_id`       | string    | Unique transaction ID. In write-mode only is available if `set_paid` is `true`.                                                                                      |
| `customer_ip_address`  | string    | Customer's IP address. <i class="label label-info">read-only</i>                                                                                                     |
| `customer_user_agent`  | string    | User agent of the customer. <i class="label label-info">read-only</i>                                                                                                |
| `created_via`          | string    | Shows where the order was created. <i class="label label-info">read-only</i>                                                                                         |
| `customer_note`        | string    | Note left by customer during checkout.                                                                                                                               |
| `date_completed`       | date-time | The date the order was completed, in the site's timezone. <i class="label label-info">read-only</i>                                                                  |
| `date_paid`            | date-time | The date the order has been paid, in the site's timezone. <i class="label label-info">read-only</i>                                                                  |
| `cart_hash`            | string    | MD5 hash of cart items to ensure orders are not modified. <i class="label label-info">read-only</i>                                                                  |
| `line_items`           | array     | Line items data. See [Line Items properties](#line-item-properties).                                                                                                 |
| `tax_lines`            | array     | Tax lines data. See [Tax Lines properties](#tax-line-properties). <i class="label label-info">read-only</i>                                                          |
| `shipping_lines`       | array     | Shipping lines data. See [Shipping Lines properties](#shipping-line-properties).                                                                                     |
| `fee_lines`            | array     | Fee lines data. See [Fee Lines Properties](#fee-line-properties).                                                                                                    |
| `coupon_lines`         | array     | Coupons line data. See [Coupon Lines properties](#coupon-line-properties).                                                                                           |
| `refunds`              | array     | List of refunds. See [Refunds Lines properties](#refunds-line-properties). <i class="label label-info">read-only</i>                                                 |

### Line item properties ###

|   Attribute    |   Type  |                                          Description                                           |
|----------------|---------|------------------------------------------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                             |
| `name`         | string  | Product name. <i class="label label-info">read-only</i>                                        |
| `sku`          | string  | Product SKU. <i class="label label-info">read-only</i>                                         |
| `product_id`   | integer | Product ID.                                                                                    |
| `variation_id` | integer | Variation ID, if applicable.                                                                   |
| `quantity`     | integer | Quantity ordered.                                                                              |
| `tax_class`    | string  | Tax class of product. <i class="label label-info">read-only</i>                                |
| `price`        | string  | Product price. <i class="label label-info">read-only</i>                                       |
| `subtotal`     | string  | Line subtotal (before discounts).                                                              |
| `subtotal_tax` | string  | Line subtotal tax (before discounts).                                                          |
| `total`        | string  | Line total (after discounts).                                                                  |
| `total_tax`    | string  | Line total tax (after discounts).                                                              |
| `taxes`        | array   | Line taxes with `id`, `total` and `subtotal`. <i class="label label-info">read-only</i>    |
| `meta`         | array   | Line item meta data with `key`, `label` and `value`. <i class="label label-info">read-only</i> |

### Tax line properties ###

|      Attribute       |   Type  |                                                             Description                                                             |
|----------------------|---------|-------------------------------------------------------------------------------------------------------------------------------------|
| `id`                 | integer | Item ID. <i class="label label-info">read-only</i>                                                                                  |
| `rate_code`          | string  | Tax rate code. <i class="label label-info">read-only</i>                                                                            |
| `rate_id`            | string  | Tax rate ID. <i class="label label-info">read-only</i>                                                                              |
| `label`              | string  | Tax rate label. <i class="label label-info">read-only</i>                                                                           |
| `compound`           | boolean | Show if is a compound tax rate. Compound tax rates are applied on top of other tax rates. <i class="label label-info">read-only</i> |
| `tax_total`          | string  | Tax total (not including shipping taxes). <i class="label label-info">read-only</i>                                                 |
| `shipping_tax_total` | string  | Shipping tax total. <i class="label label-info">read-only</i>                                                                       |

### Shipping line properties ###

|   Attribute    |   Type  |                                 Description                                 |
|----------------|---------|-----------------------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                          |
| `method_title` | string  | Shipping method name.                                                       |
| `method_id`    | string  | Shipping method ID. <i class="label label-info">required</i>                |
| `total`        | string  | Line total (after discounts).                                               |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i> |
| `taxes`        | array   | Line taxes with `id` and `total`. <i class="label label-info">read-only</i> |

### Fee line properties ###

|  Attribute   |   Type  |                                       Description                                       |
|--------------|---------|-----------------------------------------------------------------------------------------|
| `id`         | integer | Item ID. <i class="label label-info">read-only</i>                                      |
| `name`       | string  | Fee name. <i class="label label-info">required</i>                                      |
| `tax_class`  | string  | Tax class. <i class="label label-info">required if the fee is taxable</i>               |
| `tax_status` | string  | Tax status of fee. Set to `taxable` if need apply taxes.                                |
| `total`      | string  | Line total (after discounts).                                                           |
| `total_tax`  | string  | Line total tax (after discounts).                                                       |
| `taxes`      | array   | Line taxes with `id`, `total` and `subtotal`. <i class="label label-info">read-only</i> |

### Coupon line properties ###

|   Attribute    |   Type  |                          Description                          |
|----------------|---------|---------------------------------------------------------------|
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>            |
| `code`         | string  | Coupon code. <i class="label label-info">required</i>         |
| `discount`     | string  | Discount total. <i class="label label-info">required</i>      |
| `discount_tax` | string  | Discount total tax. <i class="label label-info">read-only</i> |

### Refund line properties ###

| Attribute |   Type  |                       Description                        |
|-----------|---------|----------------------------------------------------------|
| `id`      | integer | Refund ID. <i class="label label-info">read-only</i>     |
| `reason`  | string  | Refund reason. <i class="label label-info">read-only</i> |
| `total`   | string  | Refund total. <i class="label label-info">read-only</i>  |

## Create an order ##

This API helps you to create a new order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/orders</h6>
	</div>
</div>

> Example of create a paid order:

```shell
curl -X POST https://example.com/wp-json/wc/v1/orders \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "set_paid": true,
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "line_items": [
    {
      "product_id": 93,
      "quantity": 2
    },
    {
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1
    }
  ],
  "shipping_lines": [
    {
      "method_id": "flat_rate",
      "method_title": "Flat Rate",
      "total": "10.00"
    }
  ]
}'
```

```javascript
const data = {
  payment_method: "bacs",
  payment_method_title: "Direct Bank Transfer",
  set_paid: true,
  billing: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US",
    email: "john.doe@example.com",
    phone: "(555) 555-5555"
  },
  shipping: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US"
  },
  line_items: [
    {
      product_id: 93,
      quantity: 2
    },
    {
      product_id: 22,
      variation_id: 23,
      quantity: 1
    }
  ],
  shipping_lines: [
    {
      method_id: "flat_rate",
      method_title: "Flat Rate",
      total: "10.00"
    }
  ]
};

WooCommerce.post("orders", data)
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
    'payment_method' => 'bacs',
    'payment_method_title' => 'Direct Bank Transfer',
    'set_paid' => true,
    'billing' => [
        'first_name' => 'John',
        'last_name' => 'Doe',
        'address_1' => '969 Market',
        'address_2' => '',
        'city' => 'San Francisco',
        'state' => 'CA',
        'postcode' => '94103',
        'country' => 'US',
        'email' => 'john.doe@example.com',
        'phone' => '(555) 555-5555'
    ],
    'shipping' => [
        'first_name' => 'John',
        'last_name' => 'Doe',
        'address_1' => '969 Market',
        'address_2' => '',
        'city' => 'San Francisco',
        'state' => 'CA',
        'postcode' => '94103',
        'country' => 'US'
    ],
    'line_items' => [
        [
            'product_id' => 93,
            'quantity' => 2
        ],
        [
            'product_id' => 22,
            'variation_id' => 23,
            'quantity' => 1
        ]
    ],
    'shipping_lines' => [
        [
            'method_id' => 'flat_rate',
            'method_title' => 'Flat Rate',
            'total' => '10.00'
        ]
    ]
];

print_r($woocommerce->post('orders', $data));
?>
```

```python
data = {
    "payment_method": "bacs",
    "payment_method_title": "Direct Bank Transfer",
    "set_paid": True,
    "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
    },
    "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
    },
    "line_items": [
        {
            "product_id": 93,
            "quantity": 2
        },
        {
            "product_id": 22,
            "variation_id": 23,
            "quantity": 1
        }
    ],
    "shipping_lines": [
        {
            "method_id": "flat_rate",
            "method_title": "Flat Rate",
            "total": "10.00"
        }
    ]
}

print(wcapi.post("orders", data).json())
```

```ruby
data = {
  payment_method: "bacs",
  payment_method_title: "Direct Bank Transfer",
  set_paid: true,
  billing: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US",
    email: "john.doe@example.com",
    phone: "(555) 555-5555"
  },
  shipping: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US"
  },
  line_items: [
    {
      product_id: 93,
      quantity: 2
    },
    {
      product_id: 22,
      variation_id: 23,
      quantity: 1
    }
  ],
  shipping_lines: [
    {
      method_id: "flat_rate",
      method_title: "Flat Rate",
      total: "10.00"
    }
  ]
}

woocommerce.post("orders", data).parsed_response
```

> JSON response example:

```json
{
  "id": 154,
  "parent_id": 0,
  "status": "processing",
  "order_key": "wc_order_574cc02467274",
  "number": "154",
  "currency": "USD",
  "version": "2.6.0",
  "prices_include_tax": false,
  "date_created": "2016-05-30T22:35:16",
  "date_modified": "2016-05-30T22:35:16",
  "customer_id": 0,
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.95",
  "total": "37.95",
  "total_tax": "1.95",
  "billing": {
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
  "shipping": {
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
  "payment_method": "bacs",
  "payment_method_title": "bacs",
  "transaction_id": "",
  "customer_ip_address": "127.0.0.1",
  "customer_user_agent": "curl/7.47.0",
  "created_via": "rest-api",
  "customer_note": "",
  "date_completed": "2016-05-30T19:35:16",
  "date_paid": "2016-05-30 19:35:25",
  "cart_hash": "",
  "line_items": [
    {
      "id": 18,
      "name": "Woo Single #1",
      "sku": "",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "price": "3.00",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": 0.45,
          "subtotal": 0.45
        }
      ],
      "meta": []
    },
    {
      "id": 19,
      "name": "Ship Your Idea",
      "sku": "",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "price": "20.00",
      "subtotal": "20.00",
      "subtotal_tax": "1.50",
      "total": "20.00",
      "total_tax": "1.50",
      "taxes": [
        {
          "id": 75,
          "total": 1.5,
          "subtotal": 1.5
        }
      ],
      "meta": [
        {
          "key": "pa_color",
          "label": "Color",
          "value": "Black"
        }
      ]
    }
  ],
  "tax_lines": [
    {
      "id": 21,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": "75",
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.95",
      "shipping_tax_total": "0.00"
    }
  ],
  "shipping_lines": [
    {
      "id": 20,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/154"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders"
      }
    ]
  }
}
```

## Retrieve an order ##

This API lets you retrieve and view a specific order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders/154 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/154")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/154')); ?>
```

```python
print(wcapi.get("orders/154").json())
```

```ruby
woocommerce.get("orders/154").parsed_response
```

> JSON response example:

```json
{
  "id": 154,
  "parent_id": 0,
  "status": "processing",
  "order_key": "wc_order_574cc02467274",
  "number": "154",
  "currency": "USD",
  "version": "2.6.0",
  "prices_include_tax": false,
  "date_created": "2016-05-30T22:35:16",
  "date_modified": "2016-05-30T22:35:16",
  "customer_id": 0,
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.95",
  "total": "37.95",
  "total_tax": "1.95",
  "billing": {
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
  "shipping": {
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
  "payment_method": "bacs",
  "payment_method_title": "bacs",
  "transaction_id": "",
  "customer_ip_address": "127.0.0.1",
  "customer_user_agent": "curl/7.47.0",
  "created_via": "rest-api",
  "customer_note": "",
  "date_completed": "2016-05-30T19:35:16",
  "date_paid": "2016-05-30 19:35:25",
  "cart_hash": "",
  "line_items": [
    {
      "id": 18,
      "name": "Woo Single #1",
      "sku": "",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "price": "3.00",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": 0.45,
          "subtotal": 0.45
        }
      ],
      "meta": []
    },
    {
      "id": 19,
      "name": "Ship Your Idea",
      "sku": "",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "price": "20.00",
      "subtotal": "20.00",
      "subtotal_tax": "1.50",
      "total": "20.00",
      "total_tax": "1.50",
      "taxes": [
        {
          "id": 75,
          "total": 1.5,
          "subtotal": 1.5
        }
      ],
      "meta": [
        {
          "key": "pa_color",
          "label": "Color",
          "value": "Black"
        }
      ]
    }
  ],
  "tax_lines": [
    {
      "id": 21,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": "75",
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.95",
      "shipping_tax_total": "0.00"
    }
  ],
  "shipping_lines": [
    {
      "id": 20,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/154"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                    Description                    |
|-----------|--------|---------------------------------------------------|
| `dp`      | string | Number of decimal points to use in each resource. |

## List all orders ##

This API helps you to view all the orders.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/orders</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/orders \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders')); ?>
```

```python
print(wcapi.get("orders").json())
```

```ruby
woocommerce.get("orders").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 154,
    "parent_id": 0,
    "status": "processing",
    "order_key": "wc_order_574cc02467274",
    "number": "154",
    "currency": "USD",
    "version": "2.6.0",
    "prices_include_tax": false,
    "date_created": "2016-05-30T22:35:16",
    "date_modified": "2016-05-30T22:35:16",
    "customer_id": 0,
    "discount_total": "0.00",
    "discount_tax": "0.00",
    "shipping_total": "10.00",
    "shipping_tax": "0.00",
    "cart_tax": "1.95",
    "total": "37.95",
    "total_tax": "1.95",
    "billing": {
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
    "shipping": {
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
    "payment_method": "bacs",
    "payment_method_title": "bacs",
    "transaction_id": "",
    "customer_ip_address": "127.0.0.1",
    "customer_user_agent": "curl/7.47.0",
    "created_via": "rest-api",
    "customer_note": "",
    "date_completed": "2016-05-30T19:35:16",
    "date_paid": "2016-05-30 19:35:25",
    "cart_hash": "",
    "line_items": [
      {
        "id": 18,
        "name": "Woo Single #1",
        "sku": "",
        "product_id": 93,
        "variation_id": 0,
        "quantity": 2,
        "tax_class": "",
        "price": "3.00",
        "subtotal": "6.00",
        "subtotal_tax": "0.45",
        "total": "6.00",
        "total_tax": "0.45",
        "taxes": [
          {
            "id": 75,
            "total": 0.45,
            "subtotal": 0.45
          }
        ],
        "meta": []
      },
      {
        "id": 19,
        "name": "Ship Your Idea",
        "sku": "",
        "product_id": 22,
        "variation_id": 23,
        "quantity": 1,
        "tax_class": "",
        "price": "20.00",
        "subtotal": "20.00",
        "subtotal_tax": "1.50",
        "total": "20.00",
        "total_tax": "1.50",
        "taxes": [
          {
            "id": 75,
            "total": 1.5,
            "subtotal": 1.5
          }
        ],
        "meta": [
          {
            "key": "pa_color",
            "label": "Color",
            "value": "Black"
          }
        ]
      }
    ],
    "tax_lines": [
      {
        "id": 21,
        "rate_code": "US-CA-STATE TAX",
        "rate_id": "75",
        "label": "State Tax",
        "compound": false,
        "tax_total": "1.95",
        "shipping_tax_total": "0.00"
      }
    ],
    "shipping_lines": [
      {
        "id": 20,
        "method_title": "Flat Rate",
        "method_id": "flat_rate",
        "total": "10.00",
        "total_tax": "0.00",
        "taxes": []
      }
    ],
    "fee_lines": [],
    "coupon_lines": [],
    "refunds": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/154"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders"
        }
      ]
    }
  },
  {
    "id": 116,
    "parent_id": 0,
    "status": "processing",
    "order_key": "wc_order_5728e6e53d2a4",
    "number": "116",
    "currency": "USD",
    "version": "2.6.0",
    "prices_include_tax": false,
    "date_created": "2016-05-03T17:59:00",
    "date_modified": "2016-05-30T22:37:31",
    "customer_id": 1,
    "discount_total": "0.00",
    "discount_tax": "0.00",
    "shipping_total": "10.00",
    "shipping_tax": "0.00",
    "cart_tax": "0.00",
    "total": "14.00",
    "total_tax": "0.00",
    "billing": {
      "first_name": "John",
      "last_name": "Doe",
      "company": "",
      "address_1": "969 Market",
      "address_2": "",
      "city": "San Francisco",
      "state": "CA",
      "postcode": "94103",
      "country": "US",
      "email": "john.doe@claudiosmweb.com",
      "phone": "(555) 555-5555"
    },
    "shipping": {
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
    "payment_method": "bacs",
    "payment_method_title": "Direct Bank Transfer",
    "transaction_id": "",
    "customer_ip_address": "127.0.0.1",
    "customer_user_agent": "curl/7.47.0",
    "created_via": "",
    "customer_note": "",
    "date_completed": "2016-05-30T19:35:16",
    "date_paid": "2016-05-03 14:59:12",
    "cart_hash": "",
    "line_items": [
      {
        "id": 6,
        "name": "Woo Single #2",
        "sku": "12345",
        "product_id": 99,
        "variation_id": 0,
        "quantity": 2,
        "tax_class": "",
        "price": "2.00",
        "subtotal": "4.00",
        "subtotal_tax": "0.00",
        "total": "4.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta": []
      }
    ],
    "tax_lines": [],
    "shipping_lines": [
      {
        "id": 7,
        "method_title": "Flat Rate",
        "method_id": "flat_rate",
        "total": "10.00",
        "total_tax": "0.00",
        "taxes": []
      }
    ],
    "fee_lines": [],
    "coupon_lines": [],
    "refunds": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders/116"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/orders"
        }
      ],
      "customer": [
        {
          "href": "https://example.com/wp-json/wc/v1/customers/1"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter       |   Type  |                                                                                                 Description                                                                                                  |
|-----------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`       | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.                                                                                                    |
| `page`          | integer | Current page of the collection.                                                                                                                                                                              |
| `per_page`      | integer | Maximum number of items to be returned in result set.                                                                                                                                                        |
| `search`        | string  | Limit results to those matching a string.                                                                                                                                                                    |
| `after`         | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                                                  |
| `before`        | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                                                 |
| `dates_are_gmt` | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                                                                                                     |
| `exclude`       | string  | Ensure result set excludes specific ids.                                                                                                                                                                     |
| `include`       | string  | Limit result set to specific ids.                                                                                                                                                                            |
| `offset`        | integer | Offset the result set by a specific number of items.                                                                                                                                                         |
| `order`         | string  | Order sort attribute ascending or descending. Default is `asc`. Options: `asc` and `desc`.                                                                                                                   |
| `orderby`       | string  | Sort collection by object attribute. Default is `date`, Options: `date`, `id`, `include`, `title` and `slug`.                                                                                                |
| `status`        | string  | Limit result set to orders assigned a specific status. Default is `any`. Options (plugins may add new status): `any`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded` and `failed`. |
| `customer`      | string  | Limit result set to orders assigned a specific customer.                                                                                                                                                     |
| `product`       | string  | Limit result set to orders assigned a specific product.                                                                                                                                                      |
| `dp`            | string  | Number of decimal points to use in each resource.                                                                                                                                                            |

## Update an Order ##

This API lets you make changes to an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v1/orders/154 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "status": "completed"
}'
```

```javascript
const data = {
  status: "completed"
};

WooCommerce.put("orders/154", data)
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
    'status' => 'completed'
];

print_r($woocommerce->put('orders/154', $data));
?>
```

```python
data = {
    "status": "completed"
}

print(wcapi.put("orders/154", data).json())
```

```ruby
data = {
  status: "completed"
}

woocommerce.put("orders/154", data).parsed_response
```

> JSON response example:

```json
{
  "id": 154,
  "parent_id": 0,
  "status": "completed",
  "order_key": "wc_order_574cc02467274",
  "number": "154",
  "currency": "USD",
  "version": "2.6.0",
  "prices_include_tax": false,
  "date_created": "2016-05-30T22:35:16",
  "date_modified": "2016-05-30T22:46:16",
  "customer_id": 0,
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.95",
  "total": "37.95",
  "total_tax": "1.95",
  "billing": {
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
  "shipping": {
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
  "payment_method": "bacs",
  "payment_method_title": "bacs",
  "transaction_id": "",
  "customer_ip_address": "127.0.0.1",
  "customer_user_agent": "curl/7.47.0",
  "created_via": "rest-api",
  "customer_note": "",
  "date_completed": "2016-05-30T19:47:46",
  "date_paid": "2016-05-30 19:35:25",
  "cart_hash": "",
  "line_items": [
    {
      "id": 18,
      "name": "Woo Single #1",
      "sku": "",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "price": "3.00",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": 0.45,
          "subtotal": 0.45
        }
      ],
      "meta": []
    },
    {
      "id": 19,
      "name": "Ship Your Idea",
      "sku": "",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "price": "20.00",
      "subtotal": "20.00",
      "subtotal_tax": "1.50",
      "total": "20.00",
      "total_tax": "1.50",
      "taxes": [
        {
          "id": 75,
          "total": 1.5,
          "subtotal": 1.5
        }
      ],
      "meta": [
        {
          "key": "pa_color",
          "label": "Color",
          "value": "Black"
        }
      ]
    }
  ],
  "tax_lines": [
    {
      "id": 21,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": "75",
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.95",
      "shipping_tax_total": "0.00"
    }
  ],
  "shipping_lines": [
    {
      "id": 20,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/154"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders"
      }
    ]
  }
}
```

## Delete an order ##

This API helps you delete an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v1/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/orders/154?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("orders/154", {
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
<?php print_r($woocommerce->delete('orders/154', ['force' => true])); ?>
```

```python
print(wcapi.delete("orders/154", params={"force": True}).json())
```

```ruby
woocommerce.delete("orders/154", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 154,
  "parent_id": 0,
  "status": "completed",
  "order_key": "wc_order_574cc02467274",
  "number": "154",
  "currency": "USD",
  "version": "2.6.0",
  "prices_include_tax": false,
  "date_created": "2016-05-30T22:35:16",
  "date_modified": "2016-05-30T22:46:16",
  "customer_id": 0,
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.95",
  "total": "37.95",
  "total_tax": "1.95",
  "billing": {
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
  "shipping": {
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
  "payment_method": "bacs",
  "payment_method_title": "bacs",
  "transaction_id": "",
  "customer_ip_address": "127.0.0.1",
  "customer_user_agent": "curl/7.47.0",
  "created_via": "rest-api",
  "customer_note": "",
  "date_completed": "2016-05-30T19:47:46",
  "date_paid": "2016-05-30 19:35:25",
  "cart_hash": "",
  "line_items": [
    {
      "id": 18,
      "name": "Woo Single #1",
      "sku": "",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "price": "3.00",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": 0.45,
          "subtotal": 0.45
        }
      ],
      "meta": []
    },
    {
      "id": 19,
      "name": "Ship Your Idea",
      "sku": "",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "price": "20.00",
      "subtotal": "20.00",
      "subtotal_tax": "1.50",
      "total": "20.00",
      "total_tax": "1.50",
      "taxes": [
        {
          "id": 75,
          "total": 1.5,
          "subtotal": 1.5
        }
      ],
      "meta": [
        {
          "key": "pa_color",
          "label": "Color",
          "value": "Black"
        }
      ]
    }
  ],
  "tax_lines": [
    {
      "id": 21,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": "75",
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.95",
      "shipping_tax_total": "0.00"
    }
  ],
  "shipping_lines": [
    {
      "id": 20,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders/154"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/orders"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                               Description                               |
|-----------|--------|-------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the order, Default is `false`. |

## Batch update orders ##

This API helps you to batch create, update and delete multiple orders.

<aside class="notice">
Note: By default it's limited to up to 100 objects to be created, updated or deleted. 
</aside>

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/orders/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/orders/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "line_items": [
        {
          "product_id": 79,
          "quantity": 1
        },
        {
          "product_id": 93,
          "quantity": 1
        },
        {
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1
        }
      ],
      "shipping_lines": [
        {
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "30.00"
        }
      ]
    },
    {
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "set_paid": true,
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "line_items": [
        {
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1
        },
        {
          "product_id": 22,
          "variation_id": 24,
          "quantity": 1
        }
      ],
      "shipping_lines": [
        {
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "20.00"
        }
      ]
    }
  ],
  "update": [
    {
      "id": 154,
      "shipping_methods": "Local Delivery"
    }
  ],
  "delete": [
    154
  ]
}'
```

```javascript
const data = {
  create: [
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 79,
          quantity: 1
        },
        {
          product_id: 93,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "30.00"
        }
      ]
    },
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      set_paid: true,
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 24,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "20.00"
        }
      ]
    }
  ],
  update: [
    {
      id: 154,
      shipping_methods: "Local Delivery"
    }
  ],
  delete: [
    154
  ]
};

WooCommerce.post("orders/batch", data)
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
            'payment_method' => 'bacs',
            'payment_method_title' => 'Direct Bank Transfer',
            'billing' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US',
                'email' => 'john.doe@example.com',
                'phone' => '(555) 555-5555'
            ],
            'shipping' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US'
            ],
            'line_items' => [
                [
                    'product_id' => 79,
                    'quantity' => 1
                ],
                [
                    'product_id' => 93,
                    'quantity' => 1
                ],
                [
                    'product_id' => 22,
                    'variation_id' => 23,
                    'quantity' => 1
                ]
            ],
            'shipping_lines' => [
                [
                    'method_id' => 'flat_rate',
                    'method_title' => 'Flat Rate',
                    'total' => '30.00'
                ]
            ]
        ],
        [
            'payment_method' => 'bacs',
            'payment_method_title' => 'Direct Bank Transfer',
            'set_paid' => true,
            'billing' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US',
                'email' => 'john.doe@example.com',
                'phone' => '(555) 555-5555'
            ],
            'shipping' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US'
            ],
            'line_items' => [
                [
                    'product_id' => 22,
                    'variation_id' => 23,
                    'quantity' => 1
                ],
                [
                    'product_id' => 22,
                    'variation_id' => 24,
                    'quantity' => 1
                ]
            ],
            'shipping_lines' => [
                [
                    'method_id' => 'flat_rate',
                    'method_title' => 'Flat Rate',
                    'total' => '20.00'
                ]
            ]
        ]
    ],
    'update' => [
        [
            'id' => 154,
            'shipping_methods' => 'Local Delivery'
        ]
    ],
    'delete' => [
        154
    ]
];

print_r($woocommerce->post('orders/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "payment_method": "bacs",
            "payment_method_title": "Direct Bank Transfer",
            "billing": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US",
                "email": "john.doe@example.com",
                "phone": "(555) 555-5555"
            },
            "shipping": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US"
            },
            "line_items": [
                {
                    "product_id": 79,
                    "quantity": 1
                },
                {
                    "product_id": 93,
                    "quantity": 1
                },
                {
                    "product_id": 22,
                    "variation_id": 23,
                    "quantity": 1
                }
            ],
            "shipping_lines": [
                {
                    "method_id": "flat_rate",
                    "method_title": "Flat Rate",
                    "total": "30.00"
                }
            ]
        },
        {
            "payment_method": "bacs",
            "payment_method_title": "Direct Bank Transfer",
            "set_paid": True,
            "billing": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US",
                "email": "john.doe@example.com",
                "phone": "(555) 555-5555"
            },
            "shipping": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US"
            },
            "line_items": [
                {
                    "product_id": 22,
                    "variation_id": 23,
                    "quantity": 1
                },
                {
                    "product_id": 22,
                    "variation_id": 24,
                    "quantity": 1
                }
            ],
            "shipping_lines": [
                {
                    "method_id": "flat_rate",
                    "method_title": "Flat Rate",
                    "total": "20.00"
                }
            ]
        }
    ],
    "update": [
        {
            "id": 154,
            "shipping_methods": "Local Delivery"
        }
    ],
    "delete": [
        154
    ]
}

print(wcapi.post("orders/batch", data).json())
```

```ruby
data = {
  create: [
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 79,
          quantity: 1
        },
        {
          product_id: 93,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "30.00"
        }
      ]
    },
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      set_paid: true,
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 24,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "20.00"
        }
      ]
    }
  ],
  update: [
    {
      id: 154,
      shipping_methods: "Local Delivery"
    }
  ],
  delete: [
    154
  ]
}

woocommerce.post("orders/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 155,
      "parent_id": 0,
      "status": "pending",
      "order_key": "wc_order_574cc9541cea3",
      "number": "155",
      "currency": "USD",
      "version": "2.6.0",
      "prices_include_tax": false,
      "date_created": "2016-05-30T23:14:28",
      "date_modified": "2016-05-30T23:14:28",
      "customer_id": 0,
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "30.00",
      "shipping_tax": "0.00",
      "cart_tax": "2.85",
      "total": "70.85",
      "total_tax": "2.85",
      "billing": {
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
      "shipping": {
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
      "payment_method": "bacs",
      "payment_method_title": "bacs",
      "transaction_id": "",
      "customer_ip_address": "127.0.0.1",
      "customer_user_agent": "curl/7.47.0",
      "created_via": "rest-api",
      "customer_note": "",
      "date_completed": "2016-05-30T20:14:28",
      "date_paid": "",
      "cart_hash": "",
      "line_items": [
        {
          "id": 22,
          "name": "Woo Logo",
          "sku": "",
          "product_id": 79,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "price": "15.00",
          "subtotal": "15.00",
          "subtotal_tax": "1.13",
          "total": "15.00",
          "total_tax": "1.13",
          "taxes": [
            {
              "id": 75,
              "total": 1.125,
              "subtotal": 1.125
            }
          ],
          "meta": []
        },
        {
          "id": 23,
          "name": "Woo Single #1",
          "sku": "",
          "product_id": 93,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "price": "3.00",
          "subtotal": "3.00",
          "subtotal_tax": "0.23",
          "total": "3.00",
          "total_tax": "0.23",
          "taxes": [
            {
              "id": 75,
              "total": 0.225,
              "subtotal": 0.225
            }
          ],
          "meta": []
        },
        {
          "id": 24,
          "name": "Ship Your Idea",
          "sku": "",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "price": "20.00",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": 1.5,
              "subtotal": 1.5
            }
          ],
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Black"
            }
          ]
        }
      ],
      "tax_lines": [
        {
          "id": 26,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": "75",
          "label": "State Tax",
          "compound": false,
          "tax_total": "2.85",
          "shipping_tax_total": "0.00"
        }
      ],
      "shipping_lines": [
        {
          "id": 25,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "30.00",
          "total_tax": "0.00",
          "taxes": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders/155"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders"
          }
        ]
      }
    },
    {
      "id": 156,
      "parent_id": 0,
      "status": "processing",
      "order_key": "wc_order_574cc95465214",
      "number": "156",
      "currency": "USD",
      "version": "2.6.0",
      "prices_include_tax": false,
      "date_created": "2016-05-30T23:14:28",
      "date_modified": "2016-05-30T23:14:28",
      "customer_id": 0,
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "20.00",
      "shipping_tax": "0.00",
      "cart_tax": "3.00",
      "total": "63.00",
      "total_tax": "3.00",
      "billing": {
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
      "shipping": {
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
      "payment_method": "bacs",
      "payment_method_title": "bacs",
      "transaction_id": "",
      "customer_ip_address": "127.0.0.1",
      "customer_user_agent": "curl/7.47.0",
      "created_via": "rest-api",
      "customer_note": "",
      "date_completed": "2016-05-30T20:14:28",
      "date_paid": "2016-05-30 20:14:37",
      "cart_hash": "",
      "line_items": [
        {
          "id": 27,
          "name": "Ship Your Idea",
          "sku": "",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "price": "20.00",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": 1.5,
              "subtotal": 1.5
            }
          ],
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Black"
            }
          ]
        },
        {
          "id": 28,
          "name": "Ship Your Idea",
          "sku": "",
          "product_id": 22,
          "variation_id": 24,
          "quantity": 1,
          "tax_class": "",
          "price": "20.00",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": 1.5,
              "subtotal": 1.5
            }
          ],
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Green"
            }
          ]
        }
      ],
      "tax_lines": [
        {
          "id": 30,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": "75",
          "label": "State Tax",
          "compound": false,
          "tax_total": "3.00",
          "shipping_tax_total": "0.00"
        }
      ],
      "shipping_lines": [
        {
          "id": 29,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "20.00",
          "total_tax": "0.00",
          "taxes": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders/156"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 154,
      "parent_id": 0,
      "status": "completed",
      "order_key": "wc_order_574cc02467274",
      "number": "154",
      "currency": "USD",
      "version": "2.6.0",
      "prices_include_tax": false,
      "date_created": "2016-05-30T22:35:16",
      "date_modified": "2016-05-30T22:55:19",
      "customer_id": 0,
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "10.00",
      "shipping_tax": "0.00",
      "cart_tax": "1.95",
      "total": "37.95",
      "total_tax": "1.95",
      "billing": {
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
      "shipping": {
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
      "payment_method": "bacs",
      "payment_method_title": "bacs",
      "transaction_id": "",
      "customer_ip_address": "127.0.0.1",
      "customer_user_agent": "curl/7.47.0",
      "created_via": "rest-api",
      "customer_note": "",
      "date_completed": "2016-05-30T19:47:46",
      "date_paid": "2016-05-30 19:35:25",
      "cart_hash": "",
      "line_items": [
        {
          "id": 18,
          "name": "Woo Single #1",
          "sku": "",
          "product_id": 93,
          "variation_id": 0,
          "quantity": 2,
          "tax_class": "",
          "price": "3.00",
          "subtotal": "6.00",
          "subtotal_tax": "0.45",
          "total": "6.00",
          "total_tax": "0.45",
          "taxes": [
            {
              "id": 75,
              "total": 0.45,
              "subtotal": 0.45
            }
          ],
          "meta": []
        },
        {
          "id": 19,
          "name": "Ship Your Idea",
          "sku": "",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "price": "20.00",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": 1.5,
              "subtotal": 1.5
            }
          ],
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Black"
            }
          ]
        }
      ],
      "tax_lines": [
        {
          "id": 21,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": "75",
          "label": "State Tax",
          "compound": false,
          "tax_total": "1.95",
          "shipping_tax_total": "0.00"
        }
      ],
      "shipping_lines": [
        {
          "id": 20,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "10.00",
          "total_tax": "0.00",
          "taxes": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders/154"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 154,
      "parent_id": 0,
      "status": "completed",
      "order_key": "wc_order_574cc02467274",
      "number": "154",
      "currency": "USD",
      "version": "2.6.0",
      "prices_include_tax": false,
      "date_created": "2016-05-30T22:35:16",
      "date_modified": "2016-05-30T22:55:19",
      "customer_id": 0,
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "10.00",
      "shipping_tax": "0.00",
      "cart_tax": "1.95",
      "total": "37.95",
      "total_tax": "1.95",
      "billing": {
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
      "shipping": {
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
      "payment_method": "bacs",
      "payment_method_title": "bacs",
      "transaction_id": "",
      "customer_ip_address": "127.0.0.1",
      "customer_user_agent": "curl/7.47.0",
      "created_via": "rest-api",
      "customer_note": "",
      "date_completed": "2016-05-30T19:47:46",
      "date_paid": "2016-05-30 19:35:25",
      "cart_hash": "",
      "line_items": [
        {
          "id": 18,
          "name": "Woo Single #1",
          "sku": "",
          "product_id": 93,
          "variation_id": 0,
          "quantity": 2,
          "tax_class": "",
          "price": "3.00",
          "subtotal": "6.00",
          "subtotal_tax": "0.45",
          "total": "6.00",
          "total_tax": "0.45",
          "taxes": [
            {
              "id": 75,
              "total": 0.45,
              "subtotal": 0.45
            }
          ],
          "meta": []
        },
        {
          "id": 19,
          "name": "Ship Your Idea",
          "sku": "",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "price": "20.00",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": 1.5,
              "subtotal": 1.5
            }
          ],
          "meta": [
            {
              "key": "pa_color",
              "label": "Color",
              "value": "Black"
            }
          ]
        }
      ],
      "tax_lines": [
        {
          "id": 21,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": "75",
          "label": "State Tax",
          "compound": false,
          "tax_total": "1.95",
          "shipping_tax_total": "0.00"
        }
      ],
      "shipping_lines": [
        {
          "id": 20,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "10.00",
          "total_tax": "0.00",
          "taxes": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders/154"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v1/orders"
          }
        ]
      }
    }
  ]
}
```
