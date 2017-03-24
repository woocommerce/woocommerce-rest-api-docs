# Shipping zone locations #

The shipping zone locations API allows you to view and batch update shipping zone locations.

## Shipping location properties ##

| Attribute | Type   | Description                                                                                                 |
| --------- | ------ | ----------------------------------------------------------------------------------------------------------- |
| `code`    | string | Shipping zone location code.                                                                                |
| `type`    | string | Shipping zone location type. Options: `postcode`, `state`, `country` and `continent`. Default is `country`. |

## List all locations of a shipping zone ##

This API helps you to view all the locations of a shipping zone.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/shipping/zones/&lt;id&gt;/locations</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/shipping/zones/5/locations \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('shipping/zones/5/locations', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('shipping/zones/5/locations')); ?>
```

```python
print(wcapi.get("shipping/zones/5/locations").json())
```

```ruby
woocommerce.get("shipping/zones/5/locations").parsed_response
```

> JSON response example:

```json
[
  {
    "code": "BR",
    "type": "country",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5/locations"
        }
      ],
      "describes": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5"
        }
      ]
    }
  }
]
```

## Update a locations of a shipping zone ##

This API lets you make changes to locations of a shipping zone.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/shipping/zones/&lt;id&gt;/locations</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/shipping/zones/5/locations \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '[
  {
    "code": "BR:SP",
    "type": "state"
  },
  {
    "code": "BR:RJ",
    "type": "state"
  }
]'
```

```javascript
var data = [
  {
    code: 'BR:SP',
    type: 'state'
  },
  {
    code: 'BR:RJ',
    type: 'state'
  }
];

WooCommerce.put('shipping/zones/5/locations', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    [
        'code' => 'BR:SP',
        'type' => 'state'
    ],
    [
        'code' => 'BR:RJ',
        'type' => 'state'
    ]
];

print_r($woocommerce->put('shipping/zones/5/locations', $data));
?>
```

```python
data = [
    {
        "code": "BR:SP",
        "type": "state"
    },
    {
        "code": "BR:RJ",
        "type": "state"
    }
]

print(wcapi.put("shipping/zones/5/locations", data).json())
```

```ruby
data = [
  {
    code: "BR:SP",
    type: "state"
  },
  {
    code: "BR:RJ",
    type: "state"
  }
]

woocommerce.put("shipping/zones/5/locations", data).parsed_response
```

> JSON response example:

```json
[
  {
    "code": "BR:SP",
    "type": "state",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5/locations"
        }
      ],
      "describes": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5"
        }
      ]
    }
  },
  {
    "code": "BR:RJ",
    "type": "state",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5/locations"
        }
      ],
      "describes": [
        {
          "href": "https://example.com/wp-json/wc/v2/shipping/zones/5"
        }
      ]
    }
  }
]
```
