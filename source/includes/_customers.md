# Customers #

This section lists all API that can be used to create, edit or otherwise manipulate customers.

## Customers Properties ##

|     Attribute      |   Type  |                                              Description                                               |
| ------------------ | ------- | ------------------------------------------------------------------------------------------------------ |
| `id`               | integer | Customer ID (user ID) <i class="label label-info">read-only</i>                                        |
| `created_at`       | string  | UTC DateTime when the customer was created <i class="label label-info">read-only</i>                   |
| `email`            | string  | Customer email address <i class="label label-info">mandatory</i>                                       |
| `first_name`       | string  | Customer first name                                                                                    |
| `last_name`        | string  | Customer last name                                                                                     |
| `username`         | string  | Customer username <i class="label label-info">cannot be changed</i>                                    |
| `password`         | string  | Customer password <i class="label label-info">mandatory</i> <i class="label label-info">write-only</i> |
| `last_order_id`    | integer | Last order ID <i class="label label-info">read-only</i>                                                |
| `last_order_date`  | string  | UTC DateTime of the customer last order <i class="label label-info">read-only</i>                      |
| `orders_count`     | integer | Quantity of orders that the customer have <i class="label label-info">read-only</i>                    |
| `total_spent`      | integer | Total amount spent <i class="label label-info">read-only</i>                                           |
| `avatar_url`       | string  | Gravatar URL                                                                                           |
| `billing_address`  | array   | List of Billing Address fields. [See the BILLING ADDRESS PROPERTIES](#billing-address-properties)      |
| `shipping_address` | array   | List of Shipping Address fields. [See the SHIPPING ADDRESS PROPERTIES](#shipping-address-properties)   |

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
