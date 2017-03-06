# Customers #

The customer API allows you to create, view, update, and delete individual, or a batch, of customers.

## Customer properties ##

|      Attribute       |    Type   |                                                                                                                                                                            Description                                                                                                                                                                             |
|----------------------|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                 | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                      |
| `date_created`       | date-time | The date the customer was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                               |
| `date_modified`      | date-time | The date the customer was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                         |
| `email`              | string    | The email address for the customer. <i class="label label-info">mandatory</i>                                                                                                                                                                                                                                                                                      |
| `first_name`         | string    | Customer first name.                                                                                                                                                                                                                                                                                                                                               |
| `last_name`          | string    | Customer last name.                                                                                                                                                                                                                                                                                                                                                |
| `role`               | string    | Customer role. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                           |
| `username`           | string    | Customer login name. Can be generated automatically from the customer's email address if the option `woocommerce_registration_generate_username` is equal to `yes` <i class="label label-info">cannot be changed</i> <i class="label label-info">maybe mandatory</i>                                                                                               |
| `password`           | string    | Customer password. Can be generated automatically with [`wp_generate_password()`](http://codex.wordpress.org/Function_Reference/wp_generate_password) if the "Automatically generate customer password" option is enabled, check the index meta for `generate_password` <i class="label label-info">write-only</i> <i class="label label-info">maybe mandatory</i> |
| `billing`            | object    | List of billing address data. See [Billing Address properties](#billing-address-properties).                                                                                                                                                                                                                                                                       |
| `shipping`           | object    | List of shipping address data. See [Shipping Address properties](#shipping-address-properties).                                                                                                                                                                                                                                                                    |
| `is_paying_customer` | boolean   | Shows if the customer already bought something. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                          |
| `orders_count`       | integer   | Quantity of orders made by the customer. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                 |
| `total_spent`        | string    | Total amount spent. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                      |
| `avatar_url`         | string    | Avatar URL.                                                                                                                                                                                                                                                                                                                                                        |
| `meta_data`          | object    | List of customer custom meta data. See [Meta data properties](#meta-data-properties-2)                                                                                                                                                                                                                                                                                 |

### Billing address properties ###

|  Attribute   |  Type  |                     Description                      |
|--------------|--------|------------------------------------------------------|
| `first_name` | string | First name.                                          |
| `last_name`  | string | Last name.                                           |
| `company`    | string | Company name.                                        |
| `address_1`  | string | Address line 1.                                      |
| `address_2`  | string | Address line 2.                                      |
| `city`       | string | City name.                                           |
| `state`      | string | ISO code or name of the state, province or district. |
| `postcode`   | string | Postal code.                                         |
| `country`    | string | ISO code of the country.                             |
| `email`      | string | Email address.                                       |
| `phone`      | string | Phone number.                                        |

### Shipping address properties ###

|  Attribute   |  Type  |                     Description                      |
|--------------|--------|------------------------------------------------------|
| `first_name` | string | First name.                                          |
| `last_name`  | string | Last name.                                           |
| `company`    | string | Company name.                                        |
| `address_1`  | string | Address line 1.                                      |
| `address_2`  | string | Address line 2.                                      |
| `city`       | string | City name.                                           |
| `state`      | string | ISO code or name of the state, province or district. |
| `postcode`   | string | Postal code.                                         |
| `country`    | string | ISO code of the country.                             |

### Meta data properties ###

| Attribute |   Type  |                    Description                     |
|-----------|---------|----------------------------------------------------|
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

## Create a customer ##

This API helps you to create a new customer.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/customers</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/customers \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "email": "john.doe@example.com",
  "first_name": "John",
  "last_name": "Doe",
  "username": "john.doe",
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
  }
}'
```

```javascript
var data = {
  email: 'john.doe@example.com',
  first_name: 'John',
  last_name: 'Doe',
  username: 'john.doe',
  billing: {
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
  shipping: {
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
};

WooCommerce.post('customers', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'email' => 'john.doe@example.com',
    'first_name' => 'John',
    'last_name' => 'Doe',
    'username' => 'john.doe',
    'billing' => [
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
    'shipping' => [
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
];

print_r($woocommerce->post('customers', $data));
?>
```

```python
data = {
    "email": "john.doe@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "username": "john.doe",
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
    }
}

print(wcapi.post("customers", data).json())
```

```ruby
data = {
  email: "john.doe@example.com",
  first_name: "John",
  last_name: "Doe",
  username: "john.doe",
  billing: {
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
  shipping: {
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

woocommerce.post("customers", data).parsed_response
```

> JSON response example:

```json
{
  "id": 21,
  "date_created": "2017-03-07T00:37:03",
  "date_modified": "2017-03-07T00:37:04",
  "email": "john.doe@example.com",
  "first_name": "John",
  "last_name": "Doe",
  "role": "customer",
  "username": "john.doe",
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
  "is_paying_customer": false,
  "orders_count": 0,
  "total_spent": "0.00",
  "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/customers/21"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/customers"
      }
    ]
  }
}
```

## Retrieve a customer ##

This API lets you retrieve and view a specific customer by ID or email.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/customers/21 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('customers/21', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('customers/21')); ?>
```

```python
print(wcapi.get("customers/21").json())
```

```ruby
woocommerce.get("customers/21").parsed_response
```

> JSON response example:

```json
{
  "id": 21,
  "date_created": "2017-03-07T00:37:03",
  "date_modified": "2017-03-07T00:37:04",
  "email": "john.doe@example.com",
  "first_name": "John",
  "last_name": "Doe",
  "role": "customer",
  "username": "john.doe",
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
  "is_paying_customer": false,
  "orders_count": 0,
  "total_spent": "0.00",
  "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/customers/21"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/customers"
      }
    ]
  }
}
```

## List all customers ##

This API helps you to view all the customers.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/customers</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/customers \
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
[
  {
    "id": 22,
    "date_created": "2017-03-07T00:39:09",
    "date_modified": "2017-03-07T00:39:11",
    "email": "joao.silva@example.com",
    "first_name": "João",
    "last_name": "Silva",
    "role": "customer",
    "username": "joao.silva",
    "billing": {
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
    "shipping": {
      "first_name": "João",
      "last_name": "Silva",
      "company": "",
      "address_1": "Av. Brasil, 432",
      "address_2": "",
      "city": "Rio de Janeiro",
      "state": "RJ",
      "postcode": "12345-000",
      "country": "BR"
    },
    "is_paying_customer": false,
    "orders_count": 0,
    "total_spent": "0.00",
    "avatar_url": "https://secure.gravatar.com/avatar/be7b5febff88a2d947c3289e90cdf017?s=96",
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://woo.dev/wp-json/wc/v2/customers/22"
        }
      ],
      "collection": [
        {
          "href": "https://woo.dev/wp-json/wc/v2/customers"
        }
      ]
    }
  },
  {
    "id": 21,
    "date_created": "2017-03-07T00:37:03",
    "date_modified": "2017-03-07T00:37:04",
    "email": "john.doe@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "role": "customer",
    "username": "john.doe",
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
    "is_paying_customer": false,
    "orders_count": 0,
    "total_spent": "0.00",
    "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
    "meta_data": [],
    "_links": {
      "self": [
        {
          "href": "https://woo.dev/wp-json/wc/v2/customers/21"
        }
      ],
      "collection": [
        {
          "href": "https://woo.dev/wp-json/wc/v2/customers"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter  |   Type  |                                                                                                           Description                                                                                                           |
|------------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `context`  | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`.                                                                                                                       |
| `page`     | integer | Current page of the collection.                                                                                                                                                                                                 |
| `per_page` | integer | Maximum number of items to be returned in result set.                                                                                                                                                                           |
| `search`   | string  | Limit results to those matching a string.                                                                                                                                                                                       |
| `exclude`  | string  | Ensure result set excludes specific ids.                                                                                                                                                                                        |
| `include`  | string  | Limit result set to specific ids.                                                                                                                                                                                               |
| `offset`   | integer | Offset the result set by a specific number of items.                                                                                                                                                                            |
| `order`    | string  | Order sort attribute ascending or descending. Default is `asc`, Options: `asc` and `desc`.                                                                                                                                      |
| `orderby`  | string  | Sort collection by object attribute. Default is `name`. Options: `id`, `include`, `name` and `registered_date`.                                                                                                                 |
| `email`    | string  | Limit result set to resources with a specific email.                                                                                                                                                                            |
| `role`     | string  | Limit result set to resources with a specific role. Default: `customer`. Options (some plugins can add more user roles): `all`, `administrator`, `editor`, `author`, `contributor`, `subscriber`, `customer` and `shop_manager` |

## Update a customer ##

This API lets you make changes to a customer.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/customers/21 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "first_name": "James",
  "billing": {
    "first_name": "James"
  },
  "shipping": {
    "first_name": "James"
  }
}'
```

```javascript
var data = {
  first_name: 'James',
  billing: {
    first_name: 'James'
  },
  shipping: {
    first_name: 'James'
  }
};

WooCommerce.put('customers/21', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php 
$data = [
    'first_name' => 'James',
    'billing' => [
        'first_name' => 'James'
    ],
    'shipping' => [
        'first_name' => 'James'
    ]
];

print_r($woocommerce->put('customers/21', $data));
?>
```

```python
data = {
    "first_name": "James",
    "billing": {
        "first_name": "James"
    },
    "shipping": {
        "first_name": "James"
    }
}

print(wcapi.put("customers/21", data).json())
```

```ruby
data = {
  first_name: "James",
  billing: {
    first_name: "James"
  },
  shipping: {
    first_name: "James"
  }
}

woocommerce.put("customers/21", data).parsed_response
```

> JSON response example:

```json
{
  "id": 21,
  "date_created": "2017-03-07T00:37:03",
  "date_modified": "2017-03-07T00:49:38",
  "email": "john.doe@example.com",
  "first_name": "James",
  "last_name": "Doe",
  "role": "customer",
  "username": "john.doe",
  "billing": {
    "first_name": "James",
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
    "first_name": "James",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "is_paying_customer": false,
  "orders_count": 0,
  "total_spent": "0.00",
  "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://woo.dev/wp-json/wc/v2/customers/21"
      }
    ],
    "collection": [
      {
        "href": "https://woo.dev/wp-json/wc/v2/customers"
      }
    ]
  }
}
```

## Delete a customer ##

This API helps you delete a customer.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v2/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v2/customers/21?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('customers/21?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('customers/21', ['force' => true])); ?>
```

```python
print(wcapi.delete("customers/21?force=true").json())
```

```ruby
woocommerce.delete("customers/21", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 21,
  "date_created": "2017-03-07T00:37:03",
  "date_modified": "2017-03-07T00:49:38",
  "email": "john.doe@example.com",
  "first_name": "James",
  "last_name": "Doe",
  "role": "customer",
  "username": "john.doe",
  "billing": {
    "first_name": "James",
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
    "first_name": "James",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "is_paying_customer": false,
  "orders_count": 0,
  "total_spent": "0.00",
  "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
  "meta_data": [],
  "_links": {
    "self": [
      {
        "href": "https://woo.dev/wp-json/wc/v2/customers/21"
      }
    ],
    "collection": [
      {
        "href": "https://woo.dev/wp-json/wc/v2/customers"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |

## Batch update customers ##

This API helps you to batch create, update and delete multiple customers.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/customers/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/customers/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "email": "john.doe2@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "username": "john.doe2",
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
      }
    },
    {
      "email": "joao.silva2@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "username": "joao.silva2",
      "billing": {
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
      "shipping": {
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
  ],
  "update": [
    {
      "id": 22,
      "billing": {
        "phone": "(11) 1111-1111"
      }
    }
  ],
  "delete": [
    21
  ]
}'
```

```javascript
var data = {
  create: [
    {
      email: 'john.doe2@example.com',
      first_name: 'John',
      last_name: 'Doe',
      username: 'john.doe2',
      billing: {
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
      shipping: {
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
      email: 'joao.silva2@example.com',
      first_name: 'João',
      last_name: 'Silva',
      username: 'joao.silva2',
      billing: {
        first_name: 'João',
        last_name: 'Silva',
        company: '',
        address_1: 'Av. Brasil, 432',
        address_2: '',
        city: 'Rio de Janeiro',
        state: 'RJ',
        postcode: '12345-000',
        country: 'BR',
        email: 'joao.silva@example.com',
        phone: '(55) 5555-5555'
      },
      shipping: {
        first_name: 'João',
        last_name: 'Silva',
        company: '',
        address_1: 'Av. Brasil, 432',
        address_2: '',
        city: 'Rio de Janeiro',
        state: 'RJ',
        postcode: '12345-000',
        country: 'BR'
      }
    }
  ],
  update: [
    {
      id: 22,
      billing: {
        phone: '(11) 1111-1111'
      }
    }
  ],
  delete: [
    11
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
            'email' => 'john.doe2@example.com',
            'first_name' => 'John',
            'last_name' => 'Doe',
            'username' => 'john.doe2',
            'billing' => [
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
            'shipping' => [
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
        ],
        [
            'email' => 'joao.silva2@example.com',
            'first_name' => 'João',
            'last_name' => 'Silva',
            'username' => 'joao.silva2',
            'billing' => [
                'first_name' => 'João',
                'last_name' => 'Silva',
                'company' => '',
                'address_1' => 'Av. Brasil, 432',
                'address_2' => '',
                'city' => 'Rio de Janeiro',
                'state' => 'RJ',
                'postcode' => '12345-000',
                'country' => 'BR',
                'email' => 'joao.silva@example.com',
                'phone' => '(55) 5555-5555'
            ],
            'shipping' => [
                'first_name' => 'João',
                'last_name' => 'Silva',
                'company' => '',
                'address_1' => 'Av. Brasil, 432',
                'address_2' => '',
                'city' => 'Rio de Janeiro',
                'state' => 'RJ',
                'postcode' => '12345-000',
                'country' => 'BR'
            ]
        ]
    ],
    'update' => [
        [
            'id' => 22,
            'billing' => [
                'phone' => '(11) 1111-1111'
            ]
        ]
    ],
    'delete' => [
        21
    ]
];

print_r($woocommerce->post('customers/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "email": "john.doe2@example.com",
            "first_name": "John",
            "last_name": "Doe",
            "username": "john.doe2",
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
            }
        },
        {
            "email": "joao.silva2@example.com",
            "first_name": "João",
            "last_name": "Silva",
            "username": "joao.silva2",
            "billing": {
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
            "shipping": {
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
    ],
    "update": [
        {
            "id": 22,
            "billing": {
                "phone": "(11) 1111-1111"
            }
        }
    ],
    "delete": [
        21
    ]
}

print(wcapi.post("customers/batch", data).json())
```

```ruby
data = {
  create: [
    {
      email: "john.doe2@example.com",
      first_name: "John",
      last_name: "Doe",
      username: "john.doe2",
      billing: {
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
      shipping: {
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
      billing: {
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
      shipping: {
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
  ],
  update: [
    {
      id: 22,
      billing: {
        phone: "(11) 1111-1111"
      }
    }
  ],
  delete: [
    21
  ]
}

woocommerce.post("customers/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 23,
      "date_created": "2017-03-07T00:59:37",
      "date_modified": "2017-03-07T00:59:38",
      "email": "john.doe2@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "role": "customer",
      "username": "john.doe2",
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
      "is_paying_customer": false,
      "orders_count": 0,
      "total_spent": "0.00",
      "avatar_url": "https://secure.gravatar.com/avatar/6ad0b094bac53a85bb282ccdb3958279?s=96",
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers/23"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers"
          }
        ]
      }
    },
    {
      "id": 24,
      "date_created": "2017-03-07T00:59:39",
      "date_modified": "2017-03-07T00:59:40",
      "email": "joao.silva2@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "role": "customer",
      "username": "joao.silva2",
      "billing": {
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
      "shipping": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      },
      "is_paying_customer": false,
      "orders_count": 0,
      "total_spent": "0.00",
      "avatar_url": "https://secure.gravatar.com/avatar/ea9ad095f2970f27cbff07e7f5e99453?s=96",
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers/24"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 22,
      "date_created": "2017-03-07T00:39:09",
      "date_modified": "2017-03-07T00:59:41",
      "email": "joao.silva@example.com",
      "first_name": "João",
      "last_name": "Silva",
      "role": "customer",
      "username": "joao.silva",
      "billing": {
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
        "phone": "(11) 1111-1111"
      },
      "shipping": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      },
      "is_paying_customer": false,
      "orders_count": 0,
      "total_spent": "0.00",
      "avatar_url": "https://secure.gravatar.com/avatar/be7b5febff88a2d947c3289e90cdf017?s=96",
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers/22"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 21,
      "date_created": "2017-03-07T00:37:03",
      "date_modified": "2017-03-07T00:49:38",
      "email": "john.doe@example.com",
      "first_name": "James",
      "last_name": "Doe",
      "role": "customer",
      "username": "john.doe",
      "billing": {
        "first_name": "James",
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
        "first_name": "James",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "is_paying_customer": false,
      "orders_count": 0,
      "total_spent": "0.00",
      "avatar_url": "https://secure.gravatar.com/avatar/8eb1b522f60d11fa897de1dc6351b7e8?s=96",
      "meta_data": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers/21"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers"
          }
        ]
      }
    }
  ]
}
```

## Retrieve customer downloads ##

This API lets you retrieve customer downloads permissions.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/customers/&lt;id&gt;/downloads</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/customers/2/downloads \
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
[
  {
    "download_url": "https://example.com/?download_file=96&order=wc_order_571a7260c0da5&email=john.dow@xanmple.com&key=1789931e0c14ad9909a50c826f10c169",
    "download_id": "1789931e0c14ad9909a50c826f10c169",
    "product_id": 96,
    "download_name": "Woo Album #4 &ndash; Testing",
    "order_id": 105,
    "order_key": "wc_order_571a7260c0da5",
    "downloads_remaining": "unlimited",
    "access_expires": "never",
    "file": {
      "name": "Testing",
      "file": "http://example.com/wp-content/uploads/2013/06/cd_5_angle.jpg"
    },
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/customers/1/downloads"
        }
      ],
      "product": [
        {
          "href": "https://example.com/wp-json/wc/v2/products/96"
        }
      ],
      "order": [
        {
          "href": "https://example.com/wp-json/wc/v2/orders/105"
        }
      ]
    }
  }
]
```

### Customer downloads properties ###

|       Attribute       |   Type  |                                                   Description                                                    |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------|
| `download_url`        | string  | Download file URL. <i class="label label-info">read-only</i>                                                     |
| `download_id`         | string  | Download ID (MD5). <i class="label label-info">read-only</i>                                                     |
| `product_id`          | integer | Downloadable product ID. <i class="label label-info">read-only</i>                                               |
| `download_name`       | string  | Downloadable file name. <i class="label label-info">read-only</i>                                                |
| `order_id`            | integer | Order ID. <i class="label label-info">read-only</i>                                                              |
| `order_key`           | string  | Order key. <i class="label label-info">read-only</i>                                                             |
| `downloads_remaining` | string  | Amount of downloads remaining. <i class="label label-info">read-only</i>                                         |
| `access_expires`      | string  | The date when the download access expires, in the site's timezone. <i class="label label-info">read-only</i>     |
| `file`                | array   | File details with `name` (file name) and `file` (file URL) attributes. <i class="label label-info">read-only</i> |
