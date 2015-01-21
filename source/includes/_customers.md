# Customers #

This section lists all API that can be used to create, edit or otherwise manipulate customers.

## Customers Properties ##

|     Attribute      |   Type  |                                                                                           Description                                                                                            |
| ------------------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`               | integer | Customer ID (user ID) <i class="label label-info">read-only</i>                                                                                                                                  |
| `created_at`       | string  | UTC DateTime when the customer was created <i class="label label-info">read-only</i>                                                                                                             |
| `email`            | string  | Customer email address <i class="label label-info">mandatory</i>                                                                                                                                 |
| `first_name`       | string  | Customer first name                                                                                                                                                                              |
| `last_name`        | string  | Customer last name                                                                                                                                                                               |
| `username`         | string  | Customer username, can be generated automatically from the customer's email addrees if the option `woocommerce_registration_generate_username` is equal to `yes` <i class="label label-info">cannot be changed</i>                                                            |
| `password`         | string  | Customer password, can be generated automatically with [`wp_generate_password()`](http://codex.wordpress.org/Function_Reference/wp_generate_password) <i class="label label-info">write-only</i> |
| `last_order_id`    | integer | Last order ID <i class="label label-info">read-only</i>                                                                                                                                          |
| `last_order_date`  | string  | UTC DateTime of the customer last order <i class="label label-info">read-only</i>                                                                                                                |
| `orders_count`     | integer | Quantity of orders that the customer have <i class="label label-info">read-only</i>                                                                                                              |
| `total_spent`      | integer | Total amount spent <i class="label label-info">read-only</i>                                                                                                                                     |
| `avatar_url`       | string  | Gravatar URL                                                                                                                                                                                     |
| `billing_address`  | array   | List of Billing Address fields. [See the BILLING ADDRESS PROPERTIES](#billing-address-properties)                                                                                                |
| `shipping_address` | array   | List of Shipping Address fields. [See the SHIPPING ADDRESS PROPERTIES](#shipping-address-properties)                                                                                             |

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

## Parameters ##

All `GET` endpoints (except for customer orders) support date filtering via using the following parameters:

| Parameter |  Type |                                     Description                                     |
| --------- | ----- | ----------------------------------------------------------------------------------- |
| `filter`  | array | Use `created_at_min` or `created_at_max`. e.g. `?filter[created_at_min]=2015-01-01` |

## Create A Customer ##

This API helps you to create a new customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v2/customers</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v2/customers \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "customer": {
    "email": "john.doe@woothemes.com",
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
      "email": "john.doe@woothemes.com",
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

> Response:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@woothemes.com",
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
      "email": "john.doe@woothemes.com",
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

## View A Customer ##

This API lets you retrieve and view a specific customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/customers/2 \
	-u consumer_key:consumer_secret
```

> Response:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@woothemes.com",
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
      "email": "john.doe@woothemes.com",
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

## View List Of Customers ##

This API helps you to view all the customers.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v2/customers</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v2/customers \
	-u consumer_key:consumer_secret
```

> Response:

```json
{
  "customers": [
    {
      "id": 2,
      "created_at": "2015-01-05T18:34:19Z",
      "email": "john.doe@woothemes.com",
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
        "email": "john.doe@woothemes.com",
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
      "email": "joao.silva@woothemes.com",
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
        "email": "joao.silva@woothemes.com",
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

## Update A Customer ##

This API lets you make changes to a customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v2/customer/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v2/customer/2 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "customer": {
    "first_name": "James",
    "billing_address": {
      "first_name" "James"
    },
    "shipping_address": {
      "first_name" "James"
    }
  }
}'
```

> Response:

```json
{
  "customer": {
    "id": 2,
    "created_at": "2015-01-05T18:34:19Z",
    "email": "john.doe@woothemes.com",
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
      "email": "john.doe@woothemes.com",
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

## Delete A Customer ##

This API helps you delete a customer.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v2/customers/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v2/customers/529 \
	-u consumer_key:consumer_secret
```

> Response:

```json
{
  "message": "Permanently deleted customer"
}
```
