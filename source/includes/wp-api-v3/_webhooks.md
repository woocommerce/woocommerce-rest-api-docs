# Webhooks #

The webhooks API allows you to create, view, update, and delete individual, or a batch, of webhooks.

Webhooks can be managed via the WooCommerce settings screen or by using the REST API endpoints. The `WC_Webhook` class manages all data storage and retrieval of the webhook custom post type, as well as enqueuing webhook actions and processing/delivering/logging webhooks. On `woocommerce_init`, active webhooks are loaded.

Each webhook has:

* `status`: active (delivers payload), paused (delivery paused by admin), disabled (delivery paused by failure).
* `topic`: determines which resource events the webhook is triggered for.
* `delivery URL`: URL where the payload is delivered, must be HTTP or HTTPS.
* `secret`: an optional secret key that is used to generate a HMAC-SHA256 hash of the request body so the receiver can verify authenticity of the webhook.
* `hooks`: an array of hook names that are added and bound to the webhook for processing.

### Topics ###

The topic is a combination resource (e.g. order) and event (e.g. created) and maps to one or more hook names (e.g. `woocommerce_checkout_order_processed`). Webhooks can be created using the topic name and the appropriate hooks are automatically added.

Core topics are:

* Coupons: `coupon.created`, `coupon.updated` and `coupon.deleted`.
* Customers: `customer.created`, `customer.updated` and `customer.deleted`.
* Orders: `order.created`, `order.updated` and `order.deleted`.
* Products: `product.created`, `product.updated` and `product.deleted`.

Custom topics can also be used which map to a single hook name, for example you could add a webhook with topic `action.woocommerce_add_to_cart` that is triggered on that event. Custom topics pass the first hook argument to the payload, so in this example the `cart_item_key` would be included in the payload.

### Delivery/payload ###

Delivery is performed using `wp_remote_post()` (HTTP POST) and processed in the background by default using wp-cron. A few custom headers are added to the request to help the receiver process the webhook:

* `X-WC-Webhook-Source`: `http://example.com/`.
* `X-WC-Webhook-Topic` - e.g. `order.updated`.
* `X-WC-Webhook-Resource` - e.g. `order`.
* `X-WC-Webhook-Event` - e.g. `updated`.
* `X-WC-Webhook-Signature` - a base64 encoded HMAC-SHA256 hash of the payload.
* `X-WC-Webhook-ID` - webhook's post ID.
* `X-WC-Delivery-ID` - delivery log ID (a comment).

The payload is JSON encoded and for API resources (coupons, customers, orders, products), the response is exactly the same as if requested via the REST API.

### Logging ###

Requests/responses are logged using the WooCommerce logging system. Each delivery log includes:

* Request duration.
* Request URL, method, headers, and body.
* Response Code, message, headers, and body.

After 5 consecutive failed deliveries (as defined by a non HTTP 2xx response code), the webhook is disabled and must be edited via the REST API to re-enable.

Delivery logs can be accessed in "WooCommerce" > "Status" > "Logs".

### Visual interface ###

You can find the Webhooks interface going to "WooCommerce" > "Settings" > "Advanced" > "Webhooks", see our [Visual Webhooks docs](https://docs.woocommerce.com/document/webhooks/) for more details.

## Webhook properties ##

| Attribute           | Type      | Description                                                                                                                                                                                                                                                                |
| ------------------- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                                                                                                                              |
| `name`              | string    | A friendly name for the webhook.                                                                                                                                                                                                                                           |
| `status`            | string    | Webhook status. Options: `active`, `paused` and `disabled`. Default is `active`.                                                                                                                                                                                           |
| `topic`             | string    | Webhook topic. <i class="label label-info">mandatory</i>                                                                                                                                                                                                                   |
| `resource`          | string    | Webhook resource. <i class="label label-info">read-only</i>                                                                                                                                                                                                                |
| `event`             | string    | Webhook event. <i class="label label-info">read-only</i>                                                                                                                                                                                                                   |
| `hooks`             | array     | WooCommerce action names associated with the webhook. <i class="label label-info">read-only</i>                                                                                                                                                                            |
| `delivery_url`      | string    | The URL where the webhook payload is delivered. <i class="label label-info">read-only</i> <i class="label label-info">mandatory</i>                                                                                                                                        |
| `secret`            | string    | Secret key used to generate a hash of the delivered webhook and provided in the request headers. This will default is a MD5 hash from the current user's ID|username if not provided. <i class="label label-info">write-only</i> <i class="label label-info">mandatory</i> |
| `date_created`      | date-time | The date the webhook was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                        |
| `date_created_gmt`  | date-time | The date the webhook was created, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                        |
| `date_modified`     | date-time | The date the webhook was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                  |
| `date_modified_gmt` | date-time | The date the webhook was last modified, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                  |
## Create a webhook ##

This API helps you to create a new webhook.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/webhooks</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v3/webhooks \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "name": "Order updated",
  "topic": "order.updated",
  "delivery_url": "http://requestb.in/1g0sxmo1"
}'
```

```javascript
const data = {
  name: "Order updated",
  topic: "order.updated",
  delivery_url: "http://requestb.in/1g0sxmo1"
};

WooCommerce.post("webhooks", data)
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
    'name' => 'Order updated',
    'topic' => 'order.updated',
    'delivery_url' => 'http://requestb.in/1g0sxmo1'
];

print_r($woocommerce->post('webhooks', $data));
?>
```

```python
data = {
    "name": "Order updated",
    "topic": "order.updated",
    "delivery_url": "http://requestb.in/1g0sxmo1"
}

print(wcapi.post("webhooks", data).json())
```

```ruby
data = {
  name: "Order updated",
  topic: "order.updated",
  delivery_url: "http://requestb.in/1g0sxmo1"
}

woocommerce.post("webhooks", data).parsed_response
```

> JSON response example:

```json
{
  "id": 142,
  "name": "Order updated",
  "status": "active",
  "topic": "order.updated",
  "resource": "order",
  "event": "updated",
  "hooks": [
    "woocommerce_process_shop_order_meta",
    "woocommerce_api_edit_order",
    "woocommerce_order_edit_status",
    "woocommerce_order_status_changed"
  ],
  "delivery_url": "http://requestb.in/1g0sxmo1",
  "date_created": "2016-05-15T23:17:52",
  "date_created_gmt": "2016-05-15T20:17:52",
  "date_modified": "2016-05-15T23:17:52",
  "date_modified_gmt": "2016-05-15T20:17:52",
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks/142"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks"
      }
    ]
  }
}
```

## Retrieve a webhook ##

This API lets you retrieve and view a specific webhook.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/webhooks/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/webhooks/142 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("webhooks/142")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('webhooks/142')); ?>
```

```python
print(wcapi.get("webhooks/142").json())
```

```ruby
woocommerce.get("webhooks/142").parsed_response
```

> JSON response example:

```json
{
  "id": 142,
  "name": "Order updated",
  "status": "active",
  "topic": "order.updated",
  "resource": "order",
  "event": "updated",
  "hooks": [
    "woocommerce_process_shop_order_meta",
    "woocommerce_api_edit_order",
    "woocommerce_order_edit_status",
    "woocommerce_order_status_changed"
  ],
  "delivery_url": "http://requestb.in/1g0sxmo1",
  "date_created": "2016-05-15T23:17:52",
  "date_created_gmt": "2016-05-15T20:17:52",
  "date_modified": "2016-05-15T23:17:52",
  "date_modified_gmt": "2016-05-15T20:17:52",
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks/142"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks"
      }
    ]
  }
}
```

## List all webhooks ##

This API helps you to view all the webhooks.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/webhooks</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/webhooks \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("webhooks")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('webhooks')); ?>
```

```python
print(wcapi.get("webhooks").json())
```

```ruby
woocommerce.get("webhooks").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 143,
    "name": "Customer created",
    "status": "active",
    "topic": "customer.created",
    "resource": "customer",
    "event": "created",
    "hooks": [
      "user_register",
      "woocommerce_created_customer",
      "woocommerce_api_create_customer"
    ],
    "delivery_url": "http://requestb.in/1g0sxmo1",
    "date_created": "2016-05-15T23:17:52",
    "date_created_gmt": "2016-05-15T20:17:52",
    "date_modified": "2016-05-15T23:17:52",
    "date_modified_gmt": "2016-05-15T20:17:52",
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/webhooks/143"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/webhooks"
        }
      ]
    }
  },
  {
    "id": 142,
    "name": "Order updated",
    "status": "active",
    "topic": "order.updated",
    "resource": "order",
    "event": "updated",
    "hooks": [
      "woocommerce_process_shop_order_meta",
      "woocommerce_api_edit_order",
      "woocommerce_order_edit_status",
      "woocommerce_order_status_changed"
    ],
    "delivery_url": "http://requestb.in/1g0sxmo1",
    "date_created": "2016-05-15T23:17:52",
    "date_created_gmt": "2016-05-15T20:17:52",
    "date_modified": "2016-05-15T23:17:52",
    "date_modified_gmt": "2016-05-15T20:17:52",
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/webhooks/142"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/webhooks"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter       | Type    | Description                                                                                                                   |
| --------------- | ------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `context`       | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.  |
| `page`          | integer | Current page of the collection. Default is `1`.                                                                               |
| `per_page`      | integer | Maximum number of items to be returned in result set. Default is `10`.                                                        |
| `search`        | string  | Limit results to those matching a string.                                                                                     |
| `after`         | string  | Limit response to resources published after a given ISO8601 compliant date.                                                   |
| `before`        | string  | Limit response to resources published before a given ISO8601 compliant date.                                                  |
| `dates_are_gmt` | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                      |
| `exclude`       | array   | Ensure result set excludes specific IDs.                                                                                      |
| `include`       | array   | Limit result set to specific ids.                                                                                             |
| `offset`        | integer | Offset the result set by a specific number of items.                                                                          |
| `order`         | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                   |
| `orderby`       | string  | Sort collection by object attribute. Options: `date`, `id`, `include`, `title` and `slug`. Default is `date`.                 |
| `status`        | string  | Limit result set to webhooks assigned a specific status. Options: `all`, `active`, `paused` and `disabled`. Default is `all`. |

## Update a webhook ##

This API lets you make changes to a webhook.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v3/webhook/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v3/webhook/142 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "status": "paused"
}'
```

```javascript
const data = {
  status: "paused"
}

WooCommerce.put("webhooks/142", data)
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
    'status' => 'paused'
];

print_r($woocommerce->put('webhooks/142', $data));
?>
```

```python
data = {
    "status": "paused"
}

print(wcapi.put("webhooks/142", data).json())
```

```ruby
data = {
  status: "paused"
}

woocommerce.put("webhooks/142", data).parsed_response
```

> JSON response example:

```json
{
  "id": 142,
  "name": "Order updated",
  "status": "paused",
  "topic": "order.updated",
  "resource": "order",
  "event": "updated",
  "hooks": [
    "woocommerce_process_shop_order_meta",
    "woocommerce_api_edit_order",
    "woocommerce_order_edit_status",
    "woocommerce_order_status_changed"
  ],
  "delivery_url": "http://requestb.in/1g0sxmo1",
  "date_created": "2016-05-15T23:17:52",
  "date_created_gmt": "2016-05-15T20:17:52",
  "date_modified": "2016-05-15T17:30:12",
  "date_modified_gmt": "2016-05-15T20:30:12",
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks/142"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks"
      }
    ]
  }
}
```

## Delete a webhook ##

This API helps you delete a webhook.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v3/webhooks/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v3/webhooks/142 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("webhooks/142")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->delete('webhooks/142')); ?>
```

```python
print(wcapi.delete("webhooks/142").json())
```

```ruby
woocommerce.delete("webhooks/142").parsed_response
```

> JSON response example:

```json
{
  "id": 142,
  "name": "Order updated",
  "status": "paused",
  "topic": "order.updated",
  "resource": "order",
  "event": "updated",
  "hooks": [
    "woocommerce_process_shop_order_meta",
    "woocommerce_api_edit_order",
    "woocommerce_order_edit_status",
    "woocommerce_order_status_changed"
  ],
  "delivery_url": "http://requestb.in/1g0sxmo1",
  "date_created": "2016-05-15T23:17:52",
  "date_created_gmt": "2016-05-15T20:17:52",
  "date_modified": "2016-05-15T23:30:12",
  "date_modified_gmt": "2016-05-15T20:30:12",
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks/142"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/webhooks"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                                Description                                 |
|-----------|--------|----------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the webhook, Defaults is `false`. |

## Batch update webhooks ##

This API helps you to batch create, update and delete multiple webhooks.

<aside class="notice">
Note: By default it's limited to up to 100 objects to be created, updated or deleted. 
</aside>

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/webhooks/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com//wp-json/wc/v3/webhooks/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "name": "Coupon created",
      "topic": "coupon.created",
      "delivery_url": "http://requestb.in/1g0sxmo1"
    },
    {
      "name": "Customer deleted",
      "topic": "customer.deleted",
      "delivery_url": "http://requestb.in/1g0sxmo1"
    }
  ],
  "delete": [
    143
  ]
}'
```

```javascript
const data = {
  create: [
    {
      name: "Round toe",
      topic: "coupon.created",
      delivery_url: "http://requestb.in/1g0sxmo1"
    },
    {
      name: "Customer deleted",
      topic: "customer.deleted",
      delivery_url: "http://requestb.in/1g0sxmo1"
    }
  ],
  delete: [
    143
  ]
};

WooCommerce.post("webhooks/batch", data)
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
            'name' => 'Round toe',
            'topic' => 'coupon.created',
            'delivery_url' => 'http://requestb.in/1g0sxmo1'
        ],
        [
            'name' => 'Customer deleted',
            'topic' => 'customer.deleted',
            'delivery_url' => 'http://requestb.in/1g0sxmo1'
        ]
    ],
    'delete' => [
        143
    ]
];

print_r($woocommerce->post('webhooks/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "name": "Round toe",
            "topic": "coupon.created",
            "delivery_url": "http://requestb.in/1g0sxmo1"
        },
        {
            "name": "Customer deleted",
            "topic": "customer.deleted",
            "delivery_url": "http://requestb.in/1g0sxmo1"
        }
    ],
    "delete": [
        143
    ]
}

print(wcapi.post("webhooks/batch", data).json())
```

```ruby
data = {
  create: [
    {
      name: "Round toe",
      topic: "coupon.created",
      delivery_url: "http://requestb.in/1g0sxmo1"
    },
    {
      name: "Customer deleted",
      topic: "customer.deleted",
      delivery_url: "http://requestb.in/1g0sxmo1"
    }
  ],
  delete: [
    143
  ]
}

woocommerce.post("webhooks/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 146,
      "name": "Coupon created",
      "status": "active",
      "topic": "coupon.created",
      "resource": "coupon",
      "event": "created",
      "hooks": [
        "woocommerce_process_shop_coupon_meta",
        "woocommerce_api_create_coupon"
      ],
      "delivery_url": "http://requestb.in/1g0sxmo1",
      "date_created": "2016-05-25T01:56:26",
      "date_created_gmt": "2016-05-24T22:56:26",
      "date_modified": "2016-05-25T01:56:26",
      "date_modified_gmt": "2016-05-24T22:56:26",
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks/146"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks"
          }
        ]
      }
    },
    {
      "id": 147,
      "name": "Customer deleted",
      "status": "active",
      "topic": "customer.deleted",
      "resource": "customer",
      "event": "deleted",
      "hooks": [
        "delete_user"
      ],
      "delivery_url": "http://requestb.in/1g0sxmo1",
      "date_created": "2016-05-25T01:56:30",
      "date_created_gmt": "2016-05-24T22:56:30",
      "date_modified": "2016-05-25T01:56:30",
      "date_modified_gmt": "2016-05-24T22:56:30",
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks/147"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 143,
      "name": "Webhook created on May 24, 2016 @ 03:20 AM",
      "status": "active",
      "topic": "customer.created",
      "resource": "customer",
      "event": "created",
      "hooks": [
        "user_register",
        "woocommerce_created_customer",
        "woocommerce_api_create_customer"
      ],
      "delivery_url": "http://requestb.in/1g0sxmo1",
      "date_created": "2016-05-15T23:17:52",
      "date_created_gmt": "2016-05-15T20:17:52",
      "date_modified": "2016-05-15T23:17:52",
      "date_modified_gmt": "2016-05-15T20:17:52",
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks/143"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v3/webhooks"
          }
        ]
      }
    }
  ]
}
```
