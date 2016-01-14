# Customers #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate customers.

## Customers Properties ##

|     Attribute      |   Type  |                                                                                                                                                    Description                                                                                                                                                     |
| ------------------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`               | integer | Customer ID (user ID) <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                    |
| `created_at`       | string  | UTC DateTime when the customer was created <i class="label label-info">read-only</i>                                                                                                                                                                                                                               |
| `email`            | string  | Customer email address <i class="label label-info">mandatory</i>                                                                                                                                                                                                                                                   |
| `first_name`       | string  | Customer first name                                                                                                                                                                                                                                                                                                |
| `last_name`        | string  | Customer last name                                                                                                                                                                                                                                                                                                 |
| `username`         | string  | Customer username, can be generated automatically from the customer's email addrees if the option `woocommerce_registration_generate_username` is equal to `yes` <i class="label label-info">cannot be changed</i>                                                                                                 |
| `password`         | string  | Customer password, can be generated automatically with [`wp_generate_password()`](http://codex.wordpress.org/Function_Reference/wp_generate_password) if the "Automatically generate customer password" option is enabled, check the index meta for `generate_password` <i class="label label-info">write-only</i> |
| `last_order_id`    | integer | Last order ID <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                            |
| `last_order_date`  | string  | UTC DateTime of the customer last order <i class="label label-info">read-only</i>                                                                                                                                                                                                                                  |
| `orders_count`     | integer | Quantity of orders that the customer have <i class="label label-info">read-only</i>                                                                                                                                                                                                                                |
| `total_spent`      | integer | Total amount spent <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                       |
| `avatar_url`       | string  | Gravatar URL                                                                                                                                                                                                                                                                                                       |
| `billing_address`  | array   | List of Billing Address fields. See [Billing Address Properties](#billing-address-properties)                                                                                                                                                                                                                      |
| `shipping_address` | array   | List of Shipping Address fields. See [Shipping Address Properties](#shipping-address-properties)                                                                                                                                                                                                                   |

### Billing Address Properties ###

|  Attribute   |  Type  |                     Description                     |
| ------------ | ------ | --------------------------------------------------- |
| `first_name` | string | First name                                          |
| `last_name`  | string | Last name                                           |
| `company`    | string | Company name                                        |
| `address_1`  | string | Address line 1                                      |
| `address_2`  | string | Address line 2                                      |
| `city`       | string | City name                                           |
| `state`      | string | ISO code or name of the state, province or district |
| `postcode`   | string | Postal code                                         |
| `country`    | string | ISO code of the country                             |
| `email`      | string | Email address                                       |
| `phone`      | string | Phone                                               |

### Shipping Address Properties ###

|  Attribute   |  Type  |                     Description                     |
| ------------ | ------ | --------------------------------------------------- |
| `first_name` | string | First name                                          |
| `last_name`  | string | Last name                                           |
| `company`    | string | Company name                                        |
| `address_1`  | string | Address line 1                                      |
| `address_2`  | string | Address line 2                                      |
| `city`       | string | City name                                           |
| `state`      | string | ISO code or name of the state, province or district |
| `postcode`   | string | Postal code                                         |
| `country`    | string | ISO code of the country                             |

## Create a Customer ##

This API helps you to create a new customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/customers</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/customers \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "customer": {
    "email": "john.doe@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "username": "john.doe",
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
}'
```

```javascript
var data = {
  customer: {
    email: 'john.doe@example.com',
    first_name: 'John',
    last_name: 'Doe',
    username: 'john.doe',
    billing_address: {
      first_name: 'John',
      last_name: 'Doe',
      company: '',
      address_1: '969 Market',
      address_2: '',
      city: 'San Francisco',
      state: 'CA',
      postcode: '94103',
      country: 'US',
      email: 'john.doe@example.com',
      phone: '(555) 555-5555'
    },
    shipping_address: {
      first_name: 'John',
      last_name: 'Doe',
      company: '',
      address_1: '969 Market',
      address_2: '',
      city: 'San Francisco',
      state: 'CA',
      postcode: '94103',
      country: 'US'
    }
  }
};

WooCommerce.post('customers', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'customer' => [
        'email' => 'john.doe@example.com',
        'first_name' => 'John',
        'last_name' => 'Doe',
        'username' => 'john.doe',
        'billing_address' => [
            'first_name' => 'John',
            'last_name' => 'Doe',
            'company' => '',
            'address_1' => '969 Market',
            'address_2' => '',
            'city' => 'San Francisco',
            'state' => 'CA',
            'postcode' => '94103',
            'country' => 'US',
            'email' => 'john.doe@example.com',
            'phone' => '(555) 555-5555'
        ],
        'shipping_address' => [
            'first_name' => 'John',
            'last_name' => 'Doe',
            'company' => '',
            'address_1' => '969 Market',
            'address_2' => '',
            'city' => 'San Francisco',
            'state' => 'CA',
            'postcode' => '94103',
            'country' => 'US'
        ]
    ]
];

print_r($woocommerce->post('customers', $data));
?>
```

```python
data = {
    "customer": {
        "email": "john.doe@example.com",
        "first_name": "John",
        "last_name": "Doe",
        "username": "john.doe",
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

print(wcapi.post("customers", data).json())
```

```ruby
data = {
  customer: {
    email: "john.doe@example.com",
    first_name: "John",
    last_name: "Doe",
    username: "john.doe",
    billing_address: {
      first_name: "John",
      last_name: "Doe",
      company: "",
      address_1: "969 Market",
      address_2: "",
      city: "San Francisco",
      state: "CA",
      postcode: "94103",
      country: "US",
      email: "john.doe@example.com",
      phone: "(555) 555-5555"
    },
    shipping_address: {
      first_name: "John",
      last_name: "Doe",
      company: "",
      address_1: "969 Market",
      address_2: "",
      city: "San Francisco",
      state: "CA",
      postcode: "94103",
      country: "US"
    }
  }
}

woocommerce.post("customers", data).parsed_response
```

> JSON response example:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "username": "john.doe",
    "last_order_id": null,
    "last_order_date": null,
    "orders_count": 0,
    "total_spent": "0.00",
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
```

## View a Customer ##

This API lets you retrieve and view a specific customer by ID or email.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers/&lt;id&gt;</h6>
	</div>
</div>

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers/email/&lt;email&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/customers/2 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers/2', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers/2')); ?>
```

```python
print(wcapi.get("customers/2").json())
```

```ruby
woocommerce.get("customers/2").parsed_response
```

> JSON response example:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "username": "john.doe",
    "last_order_id": null,
    "last_order_date": null,
    "orders_count": 0,
    "total_spent": "0.00",
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
```

## View List of Customers ##

This API helps you to view all the customers.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/customers \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers')); ?>
```

```python
print(wcapi.get("customers").json())
```

```ruby
woocommerce.get("customers").parsed_response
```

> JSON response example:

```json
{
  "customers": [
    {
      "id": 2,
      "created_at": "2015-01-05T18:34:19Z",
      "email": "john.doe@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "username": "john.doe",
      "last_order_id": 123,
      "last_order_date": "2015-01-14T16:47:30Z",
      "orders_count": 10,
      "total_spent": "1034.58",
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
    },
    {
      "id": 3,
      "created_at": "2015-01-10T14:25:39Z",
      "email": "joao.silva@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "username": "joao.silva",
      "last_order_id": 120,
      "last_order_date": "2015-01-10T14:26:30Z",
      "orders_count": 1,
      "total_spent": "429.00",
      "avatar_url": "https://secure.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=96",
      "billing_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR",
        "email": "joao.silva@example.com",
        "phone": "(55) 5555-5555"
      },
      "shipping_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      }
    }
  ]
}
```

#### Available Filters ####

| Filter |  Type  |                     Description                     |
| ------ | ------ | --------------------------------------------------- |
| `role` | string | Customers by status. eg: `customer` or `subscriber` |

## Update a Customer ##

This API lets you make changes to a customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/customers/2 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "customer": {
    "first_name": "James",
    "billing_address": {
      "first_name": "James"
    },
    "shipping_address": {
      "first_name": "James"
    }
  }
}'
```

```javascript
var data = {
  customer: {
    first_name: 'James',
    billing_address: {
      first_name: 'James'
    },
    shipping_address: {
      first_name: 'James'
    }
  }
};

WooCommerce.put('customers/2', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'customer' => [
        'first_name' => 'James',
        'billing_address' => [
            'first_name' => 'James'
        ],
        'shipping_address' => [
            'first_name' => 'James'
        ]
    ]
];

print_r($woocommerce->put('customers/2', $data));
?>
```

```python
data = {
    "customer": {
        "first_name": "James",
        "billing_address": {
            "first_name": "James"
        },
        "shipping_address": {
            "first_name": "James"
        }
    }
}

print(wcapi.put("customers/2", data).json())
```

```ruby
data = {
  customer: {
    first_name: "James",
    billing_address: {
      first_name: "James"
    },
    shipping_address: {
      first_name: "James"
    }
  }
}

woocommerce.put("customers/2", data).parsed_response
```

> JSON response example:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@example.com",
    "first_name": "James",
    "last_name": "Doe",
    "username": "john.doe",
    "last_order_id": null,
    "last_order_date": null,
    "orders_count": 0,
    "total_spent": "0.00",
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
```

## Create/Update Multiple Customers ##

This API helps you to bulk create/update multiple customers.

To update is necessary to send objects containing IDs and to create new not just send the ID.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/customers/bulk</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/customers/bulk \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "customers": [
    {
      "email": "john.doe2@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "username": "john.doe2",
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
    },
    {
      "email": "joao.silva2@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "username": "joao.silva2",
      "billing_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR",
        "email": "joao.silva@example.com",
        "phone": "(55) 5555-5555"
      },
      "shipping_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      }
    }
  ]
}'
```

```javascript
var data = {
  customers: [
    {
      email: 'john.doe2@example.com',
      first_name: 'John',
      last_name: 'Doe',
      username: 'john.doe2',
      billing_address: {
        first_name: 'John',
        last_name: 'Doe',
        company: '',
        address_1: '969 Market',
        address_2: '',
        city: 'San Francisco',
        state: 'CA',
        postcode: '94103',
        country: 'US',
        email: 'john.doe@example.com',
        phone: '(555) 555-5555'
      },
      shipping_address: {
        first_name: 'John',
        last_name: 'Doe',
        company: '',
        address_1: '969 Market',
        address_2: '',
        city: 'San Francisco',
        state: 'CA',
        postcode: '94103',
        country: 'US'
      }
    },
    {
      email: "joao.silva2@example.com",
      first_name: "João",
      last_name: "Silva",
      username: "joao.silva2",
      billing_address: {
        first_name: "João",
        last_name: "Silva",
        company: "",
        address_1: "Av. Brasil, 432",
        address_2: "",
        city: "Rio de Janeiro",
        state: "RJ",
        postcode: "12345-000",
        country: "BR",
        email: "joao.silva@example.com",
        phone: "(55) 5555-5555"
      },
      shipping_address: {
        first_name: "João",
        last_name: "Silva",
        company: "",
        address_1: "Av. Brasil, 432",
        address_2: "",
        city: "Rio de Janeiro",
        state: "RJ",
        postcode: "12345-000",
        country: "BR"
      }
    }
  ]
};

WooCommerce.post('customers/bulk', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'customers': [
        [
            'email': 'john.doe2@example.com',
            'first_name': 'John',
            'last_name': 'Doe',
            'username': 'john.doe2',
            'billing_address': [
                'first_name': 'John',
                'last_name': 'Doe',
                'company': '',
                'address_1': '969 Market',
                'address_2': '',
                'city': 'San Francisco',
                'state': 'CA',
                'postcode': '94103',
                'country': 'US',
                'email': 'john.doe@example.com',
                'phone': '(555) 555-5555'
            ],
            'shipping_address': [
                'first_name': 'John',
                'last_name': 'Doe',
                'company': '',
                'address_1': '969 Market',
                'address_2': '',
                'city': 'San Francisco',
                'state': 'CA',
                'postcode': '94103',
                'country': 'US'
            ]
        ],
        [
            'email': 'joao.silva2@example.com',
            'first_name': 'João',
            'last_name': 'Silva',
            'username': 'joao.silva2',
            'billing_address': [
                'first_name': 'João',
                'last_name': 'Silva',
                'company': '',
                'address_1': 'Av. Brasil, 432',
                'address_2': '',
                'city': 'Rio de Janeiro',
                'state': 'RJ',
                'postcode': '12345-000',
                'country': 'BR',
                'email': 'joao.silva@example.com',
                'phone': '(55) 5555-5555'
            ],
            'shipping_address': [
                'first_name': 'João',
                'last_name': 'Silva',
                'company': '',
                'address_1': 'Av. Brasil, 432',
                'address_2': '',
                'city': 'Rio de Janeiro',
                'state': 'RJ',
                'postcode': '12345-000',
                'country': 'BR'
            ]
        ]
    ]
];

print_r($woocommerce->post('customers/bulk', $data));
?>
```

```python
data = {
    "customers": [
        {
            "email": "john.doe2@example.com",
            "first_name": "John",
            "last_name": "Doe",
            "username": "john.doe2",
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
        },
        {
            "email": "joao.silva2@example.com",
            "first_name": "João",
            "last_name": "Silva",
            "username": "joao.silva2",
            "billing_address": {
                "first_name": "João",
                "last_name": "Silva",
                "company": "",
                "address_1": "Av. Brasil, 432",
                "address_2": "",
                "city": "Rio de Janeiro",
                "state": "RJ",
                "postcode": "12345-000",
                "country": "BR",
                "email": "joao.silva@example.com",
                "phone": "(55) 5555-5555"
            },
            "shipping_address": {
                "first_name": "João",
                "last_name": "Silva",
                "company": "",
                "address_1": "Av. Brasil, 432",
                "address_2": "",
                "city": "Rio de Janeiro",
                "state": "RJ",
                "postcode": "12345-000",
                "country": "BR"
            }
        }
    ]
}

print(wcapi.post("customers/bulk", data).json())
```

```ruby
data = {
  customers: [
    {
      email: "john.doe2@example.com",
      first_name: "John",
      last_name: "Doe",
      username: "john.doe2",
      billing_address: {
        first_name: "John",
        last_name: "Doe",
        company: "",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping_address: {
        first_name: "John",
        last_name: "Doe",
        company: "",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      }
    },
    {
      email: "joao.silva2@example.com",
      first_name: "João",
      last_name: "Silva",
      username: "joao.silva2",
      billing_address: {
        first_name: "João",
        last_name: "Silva",
        company: "",
        address_1: "Av. Brasil, 432",
        address_2: "",
        city: "Rio de Janeiro",
        state: "RJ",
        postcode: "12345-000",
        country: "BR",
        email: "joao.silva@example.com",
        phone: "(55) 5555-5555"
      },
      shipping_address: {
        first_name: "João",
        last_name: "Silva",
        company: "",
        address_1: "Av. Brasil, 432",
        address_2: "",
        city: "Rio de Janeiro",
        state: "RJ",
        postcode: "12345-000",
        country: "BR"
      }
    }
  ]
}

woocommerce.post("customers/bulk", data).parsed_response
```

> JSON response example:

```json
{
  "customers": [
    {
      "id": 4,
      "created_at": "2015-07-31T14:20:46Z",
      "email": "john.doe2@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "username": "john.doe2",
      "last_order_id": null,
      "last_order_date": null,
      "orders_count": 0,
      "total_spent": "0.00",
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
    },
    {
      "id": 5,
      "created_at": "2015-07-31T14:20:46Z",
      "email": "joao.silva2@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "username": "joao.silva2",
      "last_order_id": null,
      "last_order_date": null,
      "orders_count": 0,
      "total_spent": "0.00",
      "avatar_url": "https://secure.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=96",
      "billing_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR",
        "email": "joao.silva@example.com",
        "phone": "(55) 5555-5555"
      },
      "shipping_address": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      }
    }
  ]
}
```

## Delete a Customer ##

This API helps you delete a customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/customers/2 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('customers/2', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('customers/2')); ?>
```

```python
print(wcapi.delete("customers/2").json())
```

```ruby
woocommerce.delete("customers/2").parsed_response
```

> JSON response example:

```json
{
  "message": "Permanently deleted customer"
}
```

## View Customer Orders ##

This API lets you retrieve the customers orders.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers/&lt;id&gt;/orders</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/customers/2/orders \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers/2/orders', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers/2/orders')); ?>
```

```python
print(wcapi.get("customers/2/orders").json())
```

```ruby
woocommerce.get("customers/2/orders").parsed_response
```

> JSON response example:

```json
{
  "orders": [
    {
      "id": 531,
      "order_number": 531,
      "created_at": "2015-01-21T12:02:13Z",
      "updated_at": "2015-01-21T12:02:13Z",
      "completed_at": "2015-01-21T12:02:13Z",
      "status": "on-hold",
      "currency": "USD",
      "total": "30.00",
      "subtotal": "20.00",
      "total_line_items_quantity": 1,
      "total_tax": "0.00",
      "total_shipping": "10.00",
      "cart_tax": "0.00",
      "shipping_tax": "0.00",
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
      "customer_user_agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0",
      "customer_id": 2,
      "view_order_url": "https://example.com/my-account/view-order/531",
      "line_items": [
        {
          "id": 417,
          "subtotal": "20.00",
          "subtotal_tax": "0.00",
          "total": "20.00",
          "total_tax": "0.00",
          "price": "20.00",
          "quantity": 1,
          "tax_class": null,
          "name": "Premium Quality",
          "product_id": 19,
          "sku": "",
          "meta": []
        }
      ],
      "shipping_lines": [
        {
          "id": 418,
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "10.00"
        }
      ],
      "tax_lines": [],
      "fee_lines": [],
      "coupon_lines": [],
      "customer": {
        "id": 2,
        "created_at": "2014-11-19T18:34:19Z",
        "email": "john.doe@example.com",
        "first_name": "",
        "last_name": "",
        "username": "john.doe",
        "last_order_id": "531",
        "last_order_date": "2015-01-21T12:02:13Z",
        "orders_count": 1,
        "total_spent": "0.00",
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
	View the <a href="#orders-properties">Orders Properties</a> for more details on this response.
</aside>

## View Customer Downloads ##

This API lets you retrieve the customers downloads.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers/&lt;id&gt;/downloads</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/customers/2/downloads \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers/2/downloads', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers/2/downloads')); ?>
```

```python
print(wcapi.get("customers/2/downloads").json())
```

```ruby
woocommerce.get("customers/2/downloads").parsed_response
```

> JSON response example:

```json
{
  "downloads": [
    {
      "download_url": "https://example.com/?download_file=96&order=wc_order_9999999999999&email=john.doe@example.com&key=99999999999999999999999999999999",
      "download_id": "99999999999999999999999999999999",
      "product_id": 96,
      "download_name": "Woo Album #4 &ndash; Woo Album",
      "order_id": 532,
      "order_key": "wc_order_9999999999999",
      "downloads_remaining": "5",
      "access_expires": null,
      "file": {
        "name": "Woo Album",
        "file": "http://example.com/wp-content/uploads/woocommerce_uploads/2015/01/album.zip"
      }
    }
  ]
}
```

### Customer Downloads Properties ###

|       Attribute       |   Type  |                                           Description                                           |
| --------------------- | ------- | ----------------------------------------------------------------------------------------------- |
| `download_url`        | string  | Download file URL                                                                               |
| `download_id`         | string  | Download ID                                                                                     |
| `product_id`          | integer | Downloadable product ID                                                                         |
| `download_name`       | string  | Downloadable file name                                                                          |
| `order_id`            | integer | Order ID                                                                                        |
| `order_key`           | string  | Order Key                                                                                       |
| `downloads_remaining` | string  | Amount of downloads remaining. An empty string means that is "Unlimited"                        |
| `access_expires`      | string  | UTC DateTime when the download access expires. `null` means "Never"                             |
| `file`                | array   | List for downloadable files, each one have a `name` (file name) and `file` (file URL) attribute |

## View Customers Count ##

This API lets you retrieve a count of all customers.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/customers/count</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/customers/count \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers/count', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers/count')); ?>
```

```python
print(wcapi.get("customers/count").json())
```

```ruby
woocommerce.get("customers/count").parsed_response
```

> JSON response example:

```json
{
  "count": 10
}
```

#### Available Filters ####

| Filter |  Type  |                     Description                     |
| ------ | ------ | --------------------------------------------------- |
| `role` | string | Customers by status. eg: `customer` or `subscriber` |
