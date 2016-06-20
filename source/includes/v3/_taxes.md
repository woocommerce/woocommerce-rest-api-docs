# Taxes #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate tax rates.

## Taxes Properties ##

| Attribute  |   Type  |                                                                                  Description                                                                                   |
|------------|---------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`       | integer | Tax rate ID <i class="label label-info">read-only</i>                                                                                                                          |
| `country`  | string  | Country code. See [ISO 3166 Codes (Countries)](http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html) for more details                                                      |
| `state`    | string  | State code                                                                                                                                                                     |
| `postcode` | string  | Postcode/ZIP                                                                                                                                                                   |
| `city`     | string  | City name                                                                                                                                                                      |
| `rate`     | string  | Tax rate                                                                                                                                                                       |
| `name`     | string  | Tax rate name                                                                                                                                                                  |
| `priority` | integer | Tax priority. Only 1 matching rate per priority will be used. To define multiple tax rates for a single area you need to specify a different priority per rate. Default is `1` |
| `compound` | boolean | Choose whether or not this is a compound rate. Compound tax rates are applied on top of other tax rates. Default is `false`                                                    |
| `shipping` | boolean | Choose whether or not this tax rate also gets applied to shipping. Default is `true`                                                                                           |
| `order`    | integer | Indicates the order that will appear in queries                                                                                                                                |
| `class`    | string  | Tax class. Default is `standard`                                                                                                                                               |

## Create a Tax Rate ##

This API helps you to create a new tax rate.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/taxes</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wc-api/v3/taxes \
    -u consumer_key:consumer_secret \
    -H "Content-Type: application/json" \
    -d '{
  "tax": {
    "country": "US",
    "state": "AL",
    "rate": "4",
    "name": "State Tax",
    "shipping": false
  }
}'
```

```javascript
var data = {
  tax: {
    country: 'US',
    state: 'AL',
    rate: '4',
    name: 'State Tax',
    shipping: false
  }
};

WooCommerce.post('taxes', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'tax' => [
        'country' => 'US',
        'state' => 'AL',
        'rate' => '4',
        'name' => 'State Tax',
        'shipping' => false
    ]
];

print_r($woocommerce->post('taxes', $data));
?>
```

```python
data = {
    "tax": {
        "country": "US",
        "state": "AL",
        "rate": "4",
        "name": "State Tax",
        "shipping": False
    }
}

print(wcapi.post("taxes", data).json())
```

```ruby
data = {
  tax: {
    country: "US",
    state: "AL",
    rate: "4",
    name: "State Tax",
    shipping: false
  }
}

woocommerce.post("taxes", data).parsed_response
```

> JSON response example:

```json
{
  "tax": {
    "id": 53,
    "country": "US",
    "state": "AL",
    "postcode": "",
    "city": "",
    "rate": "4.0000",
    "name": "State Tax",
    "priority": 1,
    "compound": false,
    "shipping": false,
    "order": 0,
    "class": "standard"
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View a Tax Rate ##

This API lets you retrieve and view a specific tax rate by ID.

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/taxes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/taxes/53 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('taxes/53', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('taxes/53')); ?>
```

```python
print(wcapi.get("taxes/53").json())
```

```ruby
woocommerce.get("taxes/53").parsed_response
```

> JSON response example:

```json
{
  "tax": {
    "id": 53,
    "country": "US",
    "state": "AL",
    "postcode": "",
    "city": "",
    "rate": "4.0000",
    "name": "State Tax",
    "priority": 1,
    "compound": false,
    "shipping": false,
    "order": 0,
    "class": "standard"
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View List of Tax Rates ##

This API helps you to view all the tax rates.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/taxes</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/taxes \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('taxes', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('taxes')); ?>
```

```python
print(wcapi.get("taxes").json())
```

```ruby
woocommerce.get("taxes").parsed_response
```

> JSON response example:

```json
{
  "taxes": [
    {
      "id": 53,
      "country": "US",
      "state": "AL",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 1,
      "class": "standard"
    },
    {
      "id": 54,
      "country": "US",
      "state": "AZ",
      "postcode": "",
      "city": "",
      "rate": "5.6000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 2,
      "class": "standard"
    },
    {
      "id": 55,
      "country": "US",
      "state": "AR",
      "postcode": "",
      "city": "",
      "rate": "6.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 3,
      "class": "standard"
    },
    {
      "id": 56,
      "country": "US",
      "state": "CA",
      "postcode": "",
      "city": "",
      "rate": "7.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 4,
      "class": "standard"
    },
    {
      "id": 57,
      "country": "US",
      "state": "CO",
      "postcode": "",
      "city": "",
      "rate": "2.9000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 5,
      "class": "standard"
    },
    {
      "id": 58,
      "country": "US",
      "state": "CT",
      "postcode": "",
      "city": "",
      "rate": "6.3500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 6,
      "class": "standard"
    },
    {
      "id": 59,
      "country": "US",
      "state": "DC",
      "postcode": "",
      "city": "",
      "rate": "5.7500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 7,
      "class": "standard"
    },
    {
      "id": 60,
      "country": "US",
      "state": "FL",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 8,
      "class": "standard"
    },
    {
      "id": 61,
      "country": "US",
      "state": "GA",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 9,
      "class": "standard"
    },
    {
      "id": 62,
      "country": "US",
      "state": "GU",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 10,
      "class": "standard"
    },
    {
      "id": 63,
      "country": "US",
      "state": "HI",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 11,
      "class": "standard"
    },
    {
      "id": 64,
      "country": "US",
      "state": "ID",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 12,
      "class": "standard"
    }
  ]
}
```

#### Available Filters ####

|      Filter      |  Type  |                            Description                            |
| ---------------- | ------ | ----------------------------------------------------------------- |
| `tax_rate_class` | string | Tax rates by class. eg: `standard`, `reduced-rate` or `zero-rate` |

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Update a Tax Rate ##

This API lets you make changes to a tax rate.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wc-api/v3/taxes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wc-api/v3/taxes/53 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "tax": {
    "name": "US Tax"
  }
}'
```

```javascript
var data = {
  tax: {
    name: 'US Tax'
  }
};

WooCommerce.put('taxes/53', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'tax' => [
        'name' => 'US Tax'
    ]
];

print_r($woocommerce->put('taxes/53', $data));
?>
```

```python
data = {
    "tax": {
        "name": "US Tax"
    }
}

print(wcapi.put("taxes/53", data).json())
```

```ruby
data = {
  tax: {
    name: "US Tax"
  }
}

woocommerce.put("taxes/53", data).parsed_response
```

> JSON response example:

```json
{
  "tax": {
    "id": 53,
    "country": "US",
    "state": "AL",
    "postcode": "",
    "city": "",
    "rate": "4.0000",
    "name": "US Tax",
    "priority": 1,
    "compound": false,
    "shipping": false,
    "order": 0,
    "class": "standard"
  }
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Create/Update Multiple Tax Rates ##

This API helps you to bulk create/update multiple tax rates.

To update is necessary to send objects containing IDs and to create new not just send the ID.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wc-api/v3/taxes/bulk</h6>
	</div>
</div>

> Example bulk creating all US taxes:

```shell
curl -X POST https://example.com/wc-api/v3/taxes/bulk \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "taxes": [
    {
      "country": "US",
      "state": "AL",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 1
    },
    {
      "country": "US",
      "state": "AZ",
      "rate": "5.6000",
      "name": "State Tax",
      "shipping": false,
      "order": 2
    },
    {
      "country": "US",
      "state": "AR",
      "rate": "6.5000",
      "name": "State Tax",
      "shipping": true,
      "order": 3
    },
    {
      "country": "US",
      "state": "CA",
      "rate": "7.5000",
      "name": "State Tax",
      "shipping": false,
      "order": 4
    },
    {
      "country": "US",
      "state": "CO",
      "rate": "2.9000",
      "name": "State Tax",
      "shipping": false,
      "order": 5
    },
    {
      "country": "US",
      "state": "CT",
      "rate": "6.3500",
      "name": "State Tax",
      "shipping": true,
      "order": 6
    },
    {
      "country": "US",
      "state": "DC",
      "rate": "5.7500",
      "name": "State Tax",
      "shipping": true,
      "order": 7
    },
    {
      "country": "US",
      "state": "FL",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 8
    },
    {
      "country": "US",
      "state": "GA",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 9
    },
    {
      "country": "US",
      "state": "GU",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 10
    },
    {
      "country": "US",
      "state": "HI",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 11
    },
    {
      "country": "US",
      "state": "ID",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 12
    },
    {
      "country": "US",
      "state": "IL",
      "rate": "6.2500",
      "name": "State Tax",
      "shipping": false,
      "order": 13
    },
    {
      "country": "US",
      "state": "IN",
      "rate": "7.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 14
    },
    {
      "country": "US",
      "state": "IA",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 15
    },
    {
      "country": "US",
      "state": "KS",
      "rate": "6.1500",
      "name": "State Tax",
      "shipping": true,
      "order": 16
    },
    {
      "country": "US",
      "state": "KY",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 17
    },
    {
      "country": "US",
      "state": "LA",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 18
    },
    {
      "country": "US",
      "state": "ME",
      "rate": "5.5000",
      "name": "State Tax",
      "shipping": false,
      "order": 19
    },
    {
      "country": "US",
      "state": "MD",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 20
    },
    {
      "country": "US",
      "state": "MA",
      "rate": "6.2500",
      "name": "State Tax",
      "shipping": false,
      "order": 21
    },
    {
      "country": "US",
      "state": "MI",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 22
    },
    {
      "country": "US",
      "state": "MN",
      "rate": "6.8750",
      "name": "State Tax",
      "shipping": true,
      "order": 23
    },
    {
      "country": "US",
      "state": "MS",
      "rate": "7.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 24
    },
    {
      "country": "US",
      "state": "MO",
      "rate": "4.2250",
      "name": "State Tax",
      "shipping": false,
      "order": 25
    },
    {
      "country": "US",
      "state": "NE",
      "rate": "5.5000",
      "name": "State Tax",
      "shipping": true,
      "order": 26
    },
    {
      "country": "US",
      "state": "NV",
      "rate": "6.8500",
      "name": "State Tax",
      "shipping": false,
      "order": 27
    },
    {
      "country": "US",
      "state": "NJ",
      "rate": "7.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 28
    },
    {
      "country": "US",
      "state": "NM",
      "rate": "5.1250",
      "name": "State Tax",
      "shipping": true,
      "order": 29
    },
    {
      "country": "US",
      "state": "NY",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 30
    },
    {
      "country": "US",
      "state": "NC",
      "rate": "4.7500",
      "name": "State Tax",
      "shipping": true,
      "order": 31
    },
    {
      "country": "US",
      "state": "ND",
      "rate": "5.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 32
    },
    {
      "country": "US",
      "state": "OH",
      "rate": "5.7500",
      "name": "State Tax",
      "shipping": true,
      "order": 33
    },
    {
      "country": "US",
      "state": "OK",
      "rate": "4.5000",
      "name": "State Tax",
      "shipping": false,
      "order": 34
    },
    {
      "country": "US",
      "state": "PA",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 35
    },
    {
      "country": "US",
      "state": "PR",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 36
    },
    {
      "country": "US",
      "state": "RI",
      "rate": "7.0000",
      "name": "State Tax",
      "shipping": false,
      "order": 37
    },
    {
      "country": "US",
      "state": "SC",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 38
    },
    {
      "country": "US",
      "state": "SD",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 39
    },
    {
      "country": "US",
      "state": "TN",
      "rate": "7.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 40
    },
    {
      "country": "US",
      "state": "TX",
      "rate": "6.2500",
      "name": "State Tax",
      "shipping": true,
      "order": 41
    },
    {
      "country": "US",
      "state": "UT",
      "rate": "5.9500",
      "name": "State Tax",
      "shipping": false,
      "order": 42
    },
    {
      "country": "US",
      "state": "VT",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 43
    },
    {
      "country": "US",
      "state": "VA",
      "rate": "5.3000",
      "name": "State Tax",
      "shipping": false,
      "order": 44
    },
    {
      "country": "US",
      "state": "WA",
      "rate": "6.5000",
      "name": "State Tax",
      "shipping": true,
      "order": 45
    },
    {
      "country": "US",
      "state": "WV",
      "rate": "6.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 46
    },
    {
      "country": "US",
      "state": "WI",
      "rate": "5.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 47
    },
    {
      "country": "US",
      "state": "WY",
      "rate": "4.0000",
      "name": "State Tax",
      "shipping": true,
      "order": 48
    }
  ]
}'
```

```javascript
var data = {
  taxes: [
    {
      country: 'US',
      state: 'AL',
      rate: '4.0000',
      name: 'State Tax',
      shipping: false,
      order: 1
    },
    {
      country: 'US',
      state: 'AZ',
      rate: '5.6000',
      name: 'State Tax',
      shipping: false,
      order: 2
    },
    {
      country: 'US',
      state: 'AR',
      rate: '6.5000',
      name: 'State Tax',
      shipping: true,
      order: 3
    },
    {
      country: 'US',
      state: 'CA',
      rate: '7.5000',
      name: 'State Tax',
      shipping: false,
      order: 4
    },
    {
      country: 'US',
      state: 'CO',
      rate: '2.9000',
      name: 'State Tax',
      shipping: false,
      order: 5
    },
    {
      country: 'US',
      state: 'CT',
      rate: '6.3500',
      name: 'State Tax',
      shipping: true,
      order: 6
    },
    {
      country: 'US',
      state: 'DC',
      rate: '5.7500',
      name: 'State Tax',
      shipping: true,
      order: 7
    },
    {
      country: 'US',
      state: 'FL',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 8
    },
    {
      country: 'US',
      state: 'GA',
      rate: '4.0000',
      name: 'State Tax',
      shipping: true,
      order: 9
    },
    {
      country: 'US',
      state: 'GU',
      rate: '4.0000',
      name: 'State Tax',
      shipping: false,
      order: 10
    },
    {
      country: 'US',
      state: 'HI',
      rate: '4.0000',
      name: 'State Tax',
      shipping: true,
      order: 11
    },
    {
      country: 'US',
      state: 'ID',
      rate: '6.0000',
      name: 'State Tax',
      shipping: false,
      order: 12
    },
    {
      country: 'US',
      state: 'IL',
      rate: '6.2500',
      name: 'State Tax',
      shipping: false,
      order: 13
    },
    {
      country: 'US',
      state: 'IN',
      rate: '7.0000',
      name: 'State Tax',
      shipping: false,
      order: 14
    },
    {
      country: 'US',
      state: 'IA',
      rate: '6.0000',
      name: 'State Tax',
      shipping: false,
      order: 15
    },
    {
      country: 'US',
      state: 'KS',
      rate: '6.1500',
      name: 'State Tax',
      shipping: true,
      order: 16
    },
    {
      country: 'US',
      state: 'KY',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 17
    },
    {
      country: 'US',
      state: 'LA',
      rate: '4.0000',
      name: 'State Tax',
      shipping: false,
      order: 18
    },
    {
      country: 'US',
      state: 'ME',
      rate: '5.5000',
      name: 'State Tax',
      shipping: false,
      order: 19
    },
    {
      country: 'US',
      state: 'MD',
      rate: '6.0000',
      name: 'State Tax',
      shipping: false,
      order: 20
    },
    {
      country: 'US',
      state: 'MA',
      rate: '6.2500',
      name: 'State Tax',
      shipping: false,
      order: 21
    },
    {
      country: 'US',
      state: 'MI',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 22
    },
    {
      country: 'US',
      state: 'MN',
      rate: '6.8750',
      name: 'State Tax',
      shipping: true,
      order: 23
    },
    {
      country: 'US',
      state: 'MS',
      rate: '7.0000',
      name: 'State Tax',
      shipping: true,
      order: 24
    },
    {
      country: 'US',
      state: 'MO',
      rate: '4.2250',
      name: 'State Tax',
      shipping: false,
      order: 25
    },
    {
      country: 'US',
      state: 'NE',
      rate: '5.5000',
      name: 'State Tax',
      shipping: true,
      order: 26
    },
    {
      country: 'US',
      state: 'NV',
      rate: '6.8500',
      name: 'State Tax',
      shipping: false,
      order: 27
    },
    {
      country: 'US',
      state: 'NJ',
      rate: '7.0000',
      name: 'State Tax',
      shipping: true,
      order: 28
    },
    {
      country: 'US',
      state: 'NM',
      rate: '5.1250',
      name: 'State Tax',
      shipping: true,
      order: 29
    },
    {
      country: 'US',
      state: 'NY',
      rate: '4.0000',
      name: 'State Tax',
      shipping: true,
      order: 30
    },
    {
      country: 'US',
      state: 'NC',
      rate: '4.7500',
      name: 'State Tax',
      shipping: true,
      order: 31
    },
    {
      country: 'US',
      state: 'ND',
      rate: '5.0000',
      name: 'State Tax',
      shipping: true,
      order: 32
    },
    {
      country: 'US',
      state: 'OH',
      rate: '5.7500',
      name: 'State Tax',
      shipping: true,
      order: 33
    },
    {
      country: 'US',
      state: 'OK',
      rate: '4.5000',
      name: 'State Tax',
      shipping: false,
      order: 34
    },
    {
      country: 'US',
      state: 'PA',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 35
    },
    {
      country: 'US',
      state: 'PR',
      rate: '6.0000',
      name: 'State Tax',
      shipping: false,
      order: 36
    },
    {
      country: 'US',
      state: 'RI',
      rate: '7.0000',
      name: 'State Tax',
      shipping: false,
      order: 37
    },
    {
      country: 'US',
      state: 'SC',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 38
    },
    {
      country: 'US',
      state: 'SD',
      rate: '4.0000',
      name: 'State Tax',
      shipping: true,
      order: 39
    },
    {
      country: 'US',
      state: 'TN',
      rate: '7.0000',
      name: 'State Tax',
      shipping: true,
      order: 40
    },
    {
      country: 'US',
      state: 'TX',
      rate: '6.2500',
      name: 'State Tax',
      shipping: true,
      order: 41
    },
    {
      country: 'US',
      state: 'UT',
      rate: '5.9500',
      name: 'State Tax',
      shipping: false,
      order: 42
    },
    {
      country: 'US',
      state: 'VT',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 43
    },
    {
      country: 'US',
      state: 'VA',
      rate: '5.3000',
      name: 'State Tax',
      shipping: false,
      order: 44
    },
    {
      country: 'US',
      state: 'WA',
      rate: '6.5000',
      name: 'State Tax',
      shipping: true,
      order: 45
    },
    {
      country: 'US',
      state: 'WV',
      rate: '6.0000',
      name: 'State Tax',
      shipping: true,
      order: 46
    },
    {
      country: 'US',
      state: 'WI',
      rate: '5.0000',
      name: 'State Tax',
      shipping: true,
      order: 47
    },
    {
      country: 'US',
      state: 'WY',
      rate: '4.0000',
      name: 'State Tax',
      shipping: true,
      order: 48
    }
  ]
};

WooCommerce.post('taxes/bulk', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'taxes' => [
        [
            'country' => 'US',
            'state' => 'AL',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 1
        ],
        [
            'country' => 'US',
            'state' => 'AZ',
            'rate' => '5.6000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 2
        ],
        [
            'country' => 'US',
            'state' => 'AR',
            'rate' => '6.5000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 3
        ],
        [
            'country' => 'US',
            'state' => 'CA',
            'rate' => '7.5000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 4
        ],
        [
            'country' => 'US',
            'state' => 'CO',
            'rate' => '2.9000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 5
        ],
        [
            'country' => 'US',
            'state' => 'CT',
            'rate' => '6.3500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 6
        ],
        [
            'country' => 'US',
            'state' => 'DC',
            'rate' => '5.7500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 7
        ],
        [
            'country' => 'US',
            'state' => 'FL',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 8
        ],
        [
            'country' => 'US',
            'state' => 'GA',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 9
        ],
        [
            'country' => 'US',
            'state' => 'GU',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 10
        ],
        [
            'country' => 'US',
            'state' => 'HI',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 11
        ],
        [
            'country' => 'US',
            'state' => 'ID',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 12
        ],
        [
            'country' => 'US',
            'state' => 'IL',
            'rate' => '6.2500',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 13
        ],
        [
            'country' => 'US',
            'state' => 'IN',
            'rate' => '7.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 14
        ],
        [
            'country' => 'US',
            'state' => 'IA',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 15
        ],
        [
            'country' => 'US',
            'state' => 'KS',
            'rate' => '6.1500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 16
        ],
        [
            'country' => 'US',
            'state' => 'KY',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 17
        ],
        [
            'country' => 'US',
            'state' => 'LA',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 18
        ],
        [
            'country' => 'US',
            'state' => 'ME',
            'rate' => '5.5000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 19
        ],
        [
            'country' => 'US',
            'state' => 'MD',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 20
        ],
        [
            'country' => 'US',
            'state' => 'MA',
            'rate' => '6.2500',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 21
        ],
        [
            'country' => 'US',
            'state' => 'MI',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 22
        ],
        [
            'country' => 'US',
            'state' => 'MN',
            'rate' => '6.8750',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 23
        ],
        [
            'country' => 'US',
            'state' => 'MS',
            'rate' => '7.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 24
        ],
        [
            'country' => 'US',
            'state' => 'MO',
            'rate' => '4.2250',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 25
        ],
        [
            'country' => 'US',
            'state' => 'NE',
            'rate' => '5.5000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 26
        ],
        [
            'country' => 'US',
            'state' => 'NV',
            'rate' => '6.8500',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 27
        ],
        [
            'country' => 'US',
            'state' => 'NJ',
            'rate' => '7.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 28
        ],
        [
            'country' => 'US',
            'state' => 'NM',
            'rate' => '5.1250',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 29
        ],
        [
            'country' => 'US',
            'state' => 'NY',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 30
        ],
        [
            'country' => 'US',
            'state' => 'NC',
            'rate' => '4.7500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 31
        ],
        [
            'country' => 'US',
            'state' => 'ND',
            'rate' => '5.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 32
        ],
        [
            'country' => 'US',
            'state' => 'OH',
            'rate' => '5.7500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 33
        ],
        [
            'country' => 'US',
            'state' => 'OK',
            'rate' => '4.5000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 34
        ],
        [
            'country' => 'US',
            'state' => 'PA',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 35
        ],
        [
            'country' => 'US',
            'state' => 'PR',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 36
        ],
        [
            'country' => 'US',
            'state' => 'RI',
            'rate' => '7.0000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 37
        ],
        [
            'country' => 'US',
            'state' => 'SC',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 38
        ],
        [
            'country' => 'US',
            'state' => 'SD',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 39
        ],
        [
            'country' => 'US',
            'state' => 'TN',
            'rate' => '7.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 40
        ],
        [
            'country' => 'US',
            'state' => 'TX',
            'rate' => '6.2500',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 41
        ],
        [
            'country' => 'US',
            'state' => 'UT',
            'rate' => '5.9500',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 42
        ],
        [
            'country' => 'US',
            'state' => 'VT',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 43
        ],
        [
            'country' => 'US',
            'state' => 'VA',
            'rate' => '5.3000',
            'name' => 'State Tax',
            'shipping' => false,
            'order' => 44
        ],
        [
            'country' => 'US',
            'state' => 'WA',
            'rate' => '6.5000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 45
        ],
        [
            'country' => 'US',
            'state' => 'WV',
            'rate' => '6.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 46
        ],
        [
            'country' => 'US',
            'state' => 'WI',
            'rate' => '5.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 47
        ],
        [
            'country' => 'US',
            'state' => 'WY',
            'rate' => '4.0000',
            'name' => 'State Tax',
            'shipping' => true,
            'order' => 48
        ]
    ]
];

print_r($woocommerce->post('taxes/bulk', $data));
?>
```

```python
data = {
    "taxes": [
        {
            "country": "US",
            "state": "AL",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 1
        },
        {
            "country": "US",
            "state": "AZ",
            "rate": "5.6000",
            "name": "State Tax",
            "shipping": False,
            "order": 2
        },
        {
            "country": "US",
            "state": "AR",
            "rate": "6.5000",
            "name": "State Tax",
            "shipping": True,
            "order": 3
        },
        {
            "country": "US",
            "state": "CA",
            "rate": "7.5000",
            "name": "State Tax",
            "shipping": False,
            "order": 4
        },
        {
            "country": "US",
            "state": "CO",
            "rate": "2.9000",
            "name": "State Tax",
            "shipping": False,
            "order": 5
        },
        {
            "country": "US",
            "state": "CT",
            "rate": "6.3500",
            "name": "State Tax",
            "shipping": True,
            "order": 6
        },
        {
            "country": "US",
            "state": "DC",
            "rate": "5.7500",
            "name": "State Tax",
            "shipping": True,
            "order": 7
        },
        {
            "country": "US",
            "state": "FL",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 8
        },
        {
            "country": "US",
            "state": "GA",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 9
        },
        {
            "country": "US",
            "state": "GU",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 10
        },
        {
            "country": "US",
            "state": "HI",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 11
        },
        {
            "country": "US",
            "state": "ID",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 12
        },
        {
            "country": "US",
            "state": "IL",
            "rate": "6.2500",
            "name": "State Tax",
            "shipping": False,
            "order": 13
        },
        {
            "country": "US",
            "state": "IN",
            "rate": "7.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 14
        },
        {
            "country": "US",
            "state": "IA",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 15
        },
        {
            "country": "US",
            "state": "KS",
            "rate": "6.1500",
            "name": "State Tax",
            "shipping": True,
            "order": 16
        },
        {
            "country": "US",
            "state": "KY",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 17
        },
        {
            "country": "US",
            "state": "LA",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 18
        },
        {
            "country": "US",
            "state": "ME",
            "rate": "5.5000",
            "name": "State Tax",
            "shipping": False,
            "order": 19
        },
        {
            "country": "US",
            "state": "MD",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 20
        },
        {
            "country": "US",
            "state": "MA",
            "rate": "6.2500",
            "name": "State Tax",
            "shipping": False,
            "order": 21
        },
        {
            "country": "US",
            "state": "MI",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 22
        },
        {
            "country": "US",
            "state": "MN",
            "rate": "6.8750",
            "name": "State Tax",
            "shipping": True,
            "order": 23
        },
        {
            "country": "US",
            "state": "MS",
            "rate": "7.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 24
        },
        {
            "country": "US",
            "state": "MO",
            "rate": "4.2250",
            "name": "State Tax",
            "shipping": False,
            "order": 25
        },
        {
            "country": "US",
            "state": "NE",
            "rate": "5.5000",
            "name": "State Tax",
            "shipping": True,
            "order": 26
        },
        {
            "country": "US",
            "state": "NV",
            "rate": "6.8500",
            "name": "State Tax",
            "shipping": False,
            "order": 27
        },
        {
            "country": "US",
            "state": "NJ",
            "rate": "7.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 28
        },
        {
            "country": "US",
            "state": "NM",
            "rate": "5.1250",
            "name": "State Tax",
            "shipping": True,
            "order": 29
        },
        {
            "country": "US",
            "state": "NY",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 30
        },
        {
            "country": "US",
            "state": "NC",
            "rate": "4.7500",
            "name": "State Tax",
            "shipping": True,
            "order": 31
        },
        {
            "country": "US",
            "state": "ND",
            "rate": "5.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 32
        },
        {
            "country": "US",
            "state": "OH",
            "rate": "5.7500",
            "name": "State Tax",
            "shipping": True,
            "order": 33
        },
        {
            "country": "US",
            "state": "OK",
            "rate": "4.5000",
            "name": "State Tax",
            "shipping": False,
            "order": 34
        },
        {
            "country": "US",
            "state": "PA",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 35
        },
        {
            "country": "US",
            "state": "PR",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 36
        },
        {
            "country": "US",
            "state": "RI",
            "rate": "7.0000",
            "name": "State Tax",
            "shipping": False,
            "order": 37
        },
        {
            "country": "US",
            "state": "SC",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 38
        },
        {
            "country": "US",
            "state": "SD",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 39
        },
        {
            "country": "US",
            "state": "TN",
            "rate": "7.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 40
        },
        {
            "country": "US",
            "state": "TX",
            "rate": "6.2500",
            "name": "State Tax",
            "shipping": True,
            "order": 41
        },
        {
            "country": "US",
            "state": "UT",
            "rate": "5.9500",
            "name": "State Tax",
            "shipping": False,
            "order": 42
        },
        {
            "country": "US",
            "state": "VT",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 43
        },
        {
            "country": "US",
            "state": "VA",
            "rate": "5.3000",
            "name": "State Tax",
            "shipping": False,
            "order": 44
        },
        {
            "country": "US",
            "state": "WA",
            "rate": "6.5000",
            "name": "State Tax",
            "shipping": True,
            "order": 45
        },
        {
            "country": "US",
            "state": "WV",
            "rate": "6.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 46
        },
        {
            "country": "US",
            "state": "WI",
            "rate": "5.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 47
        },
        {
            "country": "US",
            "state": "WY",
            "rate": "4.0000",
            "name": "State Tax",
            "shipping": True,
            "order": 48
        }
    ]
}

print(wcapi.post("taxes/bulk", data).json())
```

```ruby
data = {
  taxes: [
    {
      country: "US",
      state: "AL",
      rate: "4.0000",
      name: "State Tax",
      shipping: false,
      order: 1
    },
    {
      country: "US",
      state: "AZ",
      rate: "5.6000",
      name: "State Tax",
      shipping: false,
      order: 2
    },
    {
      country: "US",
      state: "AR",
      rate: "6.5000",
      name: "State Tax",
      shipping: true,
      order: 3
    },
    {
      country: "US",
      state: "CA",
      rate: "7.5000",
      name: "State Tax",
      shipping: false,
      order: 4
    },
    {
      country: "US",
      state: "CO",
      rate: "2.9000",
      name: "State Tax",
      shipping: false,
      order: 5
    },
    {
      country: "US",
      state: "CT",
      rate: "6.3500",
      name: "State Tax",
      shipping: true,
      order: 6
    },
    {
      country: "US",
      state: "DC",
      rate: "5.7500",
      name: "State Tax",
      shipping: true,
      order: 7
    },
    {
      country: "US",
      state: "FL",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 8
    },
    {
      country: "US",
      state: "GA",
      rate: "4.0000",
      name: "State Tax",
      shipping: true,
      order: 9
    },
    {
      country: "US",
      state: "GU",
      rate: "4.0000",
      name: "State Tax",
      shipping: false,
      order: 10
    },
    {
      country: "US",
      state: "HI",
      rate: "4.0000",
      name: "State Tax",
      shipping: true,
      order: 11
    },
    {
      country: "US",
      state: "ID",
      rate: "6.0000",
      name: "State Tax",
      shipping: false,
      order: 12
    },
    {
      country: "US",
      state: "IL",
      rate: "6.2500",
      name: "State Tax",
      shipping: false,
      order: 13
    },
    {
      country: "US",
      state: "IN",
      rate: "7.0000",
      name: "State Tax",
      shipping: false,
      order: 14
    },
    {
      country: "US",
      state: "IA",
      rate: "6.0000",
      name: "State Tax",
      shipping: false,
      order: 15
    },
    {
      country: "US",
      state: "KS",
      rate: "6.1500",
      name: "State Tax",
      shipping: true,
      order: 16
    },
    {
      country: "US",
      state: "KY",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 17
    },
    {
      country: "US",
      state: "LA",
      rate: "4.0000",
      name: "State Tax",
      shipping: false,
      order: 18
    },
    {
      country: "US",
      state: "ME",
      rate: "5.5000",
      name: "State Tax",
      shipping: false,
      order: 19
    },
    {
      country: "US",
      state: "MD",
      rate: "6.0000",
      name: "State Tax",
      shipping: false,
      order: 20
    },
    {
      country: "US",
      state: "MA",
      rate: "6.2500",
      name: "State Tax",
      shipping: false,
      order: 21
    },
    {
      country: "US",
      state: "MI",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 22
    },
    {
      country: "US",
      state: "MN",
      rate: "6.8750",
      name: "State Tax",
      shipping: true,
      order: 23
    },
    {
      country: "US",
      state: "MS",
      rate: "7.0000",
      name: "State Tax",
      shipping: true,
      order: 24
    },
    {
      country: "US",
      state: "MO",
      rate: "4.2250",
      name: "State Tax",
      shipping: false,
      order: 25
    },
    {
      country: "US",
      state: "NE",
      rate: "5.5000",
      name: "State Tax",
      shipping: true,
      order: 26
    },
    {
      country: "US",
      state: "NV",
      rate: "6.8500",
      name: "State Tax",
      shipping: false,
      order: 27
    },
    {
      country: "US",
      state: "NJ",
      rate: "7.0000",
      name: "State Tax",
      shipping: true,
      order: 28
    },
    {
      country: "US",
      state: "NM",
      rate: "5.1250",
      name: "State Tax",
      shipping: true,
      order: 29
    },
    {
      country: "US",
      state: "NY",
      rate: "4.0000",
      name: "State Tax",
      shipping: true,
      order: 30
    },
    {
      country: "US",
      state: "NC",
      rate: "4.7500",
      name: "State Tax",
      shipping: true,
      order: 31
    },
    {
      country: "US",
      state: "ND",
      rate: "5.0000",
      name: "State Tax",
      shipping: true,
      order: 32
    },
    {
      country: "US",
      state: "OH",
      rate: "5.7500",
      name: "State Tax",
      shipping: true,
      order: 33
    },
    {
      country: "US",
      state: "OK",
      rate: "4.5000",
      name: "State Tax",
      shipping: false,
      order: 34
    },
    {
      country: "US",
      state: "PA",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 35
    },
    {
      country: "US",
      state: "PR",
      rate: "6.0000",
      name: "State Tax",
      shipping: false,
      order: 36
    },
    {
      country: "US",
      state: "RI",
      rate: "7.0000",
      name: "State Tax",
      shipping: false,
      order: 37
    },
    {
      country: "US",
      state: "SC",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 38
    },
    {
      country: "US",
      state: "SD",
      rate: "4.0000",
      name: "State Tax",
      shipping: true,
      order: 39
    },
    {
      country: "US",
      state: "TN",
      rate: "7.0000",
      name: "State Tax",
      shipping: true,
      order: 40
    },
    {
      country: "US",
      state: "TX",
      rate: "6.2500",
      name: "State Tax",
      shipping: true,
      order: 41
    },
    {
      country: "US",
      state: "UT",
      rate: "5.9500",
      name: "State Tax",
      shipping: false,
      order: 42
    },
    {
      country: "US",
      state: "VT",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 43
    },
    {
      country: "US",
      state: "VA",
      rate: "5.3000",
      name: "State Tax",
      shipping: false,
      order: 44
    },
    {
      country: "US",
      state: "WA",
      rate: "6.5000",
      name: "State Tax",
      shipping: true,
      order: 45
    },
    {
      country: "US",
      state: "WV",
      rate: "6.0000",
      name: "State Tax",
      shipping: true,
      order: 46
    },
    {
      country: "US",
      state: "WI",
      rate: "5.0000",
      name: "State Tax",
      shipping: true,
      order: 47
    },
    {
      country: "US",
      state: "WY",
      rate: "4.0000",
      name: "State Tax",
      shipping: true,
      order: 48
    }
  ]
}

woocommerce.post("taxes/bulk", data).parsed_response
```

> JSON response example:

```json
{
  "taxes": [
    {
      "id": 53,
      "country": "US",
      "state": "AL",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 1,
      "class": "standard"
    },
    {
      "id": 54,
      "country": "US",
      "state": "AZ",
      "postcode": "",
      "city": "",
      "rate": "5.6000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 2,
      "class": "standard"
    },
    {
      "id": 55,
      "country": "US",
      "state": "AR",
      "postcode": "",
      "city": "",
      "rate": "6.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 3,
      "class": "standard"
    },
    {
      "id": 56,
      "country": "US",
      "state": "CA",
      "postcode": "",
      "city": "",
      "rate": "7.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 4,
      "class": "standard"
    },
    {
      "id": 57,
      "country": "US",
      "state": "CO",
      "postcode": "",
      "city": "",
      "rate": "2.9000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 5,
      "class": "standard"
    },
    {
      "id": 58,
      "country": "US",
      "state": "CT",
      "postcode": "",
      "city": "",
      "rate": "6.3500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 6,
      "class": "standard"
    },
    {
      "id": 59,
      "country": "US",
      "state": "DC",
      "postcode": "",
      "city": "",
      "rate": "5.7500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 7,
      "class": "standard"
    },
    {
      "id": 60,
      "country": "US",
      "state": "FL",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 8,
      "class": "standard"
    },
    {
      "id": 61,
      "country": "US",
      "state": "GA",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 9,
      "class": "standard"
    },
    {
      "id": 62,
      "country": "US",
      "state": "GU",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 10,
      "class": "standard"
    },
    {
      "id": 63,
      "country": "US",
      "state": "HI",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 11,
      "class": "standard"
    },
    {
      "id": 64,
      "country": "US",
      "state": "ID",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 12,
      "class": "standard"
    },
    {
      "id": 65,
      "country": "US",
      "state": "IL",
      "postcode": "",
      "city": "",
      "rate": "6.2500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 13,
      "class": "standard"
    },
    {
      "id": 66,
      "country": "US",
      "state": "IN",
      "postcode": "",
      "city": "",
      "rate": "7.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 14,
      "class": "standard"
    },
    {
      "id": 67,
      "country": "US",
      "state": "IA",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 15,
      "class": "standard"
    },
    {
      "id": 68,
      "country": "US",
      "state": "KS",
      "postcode": "",
      "city": "",
      "rate": "6.1500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 16,
      "class": "standard"
    },
    {
      "id": 69,
      "country": "US",
      "state": "KY",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 17,
      "class": "standard"
    },
    {
      "id": 70,
      "country": "US",
      "state": "LA",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 18,
      "class": "standard"
    },
    {
      "id": 71,
      "country": "US",
      "state": "ME",
      "postcode": "",
      "city": "",
      "rate": "5.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 19,
      "class": "standard"
    },
    {
      "id": 72,
      "country": "US",
      "state": "MD",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 20,
      "class": "standard"
    },
    {
      "id": 73,
      "country": "US",
      "state": "MA",
      "postcode": "",
      "city": "",
      "rate": "6.2500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 21,
      "class": "standard"
    },
    {
      "id": 74,
      "country": "US",
      "state": "MI",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 22,
      "class": "standard"
    },
    {
      "id": 75,
      "country": "US",
      "state": "MN",
      "postcode": "",
      "city": "",
      "rate": "6.8750",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 23,
      "class": "standard"
    },
    {
      "id": 76,
      "country": "US",
      "state": "MS",
      "postcode": "",
      "city": "",
      "rate": "7.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 24,
      "class": "standard"
    },
    {
      "id": 77,
      "country": "US",
      "state": "MO",
      "postcode": "",
      "city": "",
      "rate": "4.2250",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 25,
      "class": "standard"
    },
    {
      "id": 78,
      "country": "US",
      "state": "NE",
      "postcode": "",
      "city": "",
      "rate": "5.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 26,
      "class": "standard"
    },
    {
      "id": 79,
      "country": "US",
      "state": "NV",
      "postcode": "",
      "city": "",
      "rate": "6.8500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 27,
      "class": "standard"
    },
    {
      "id": 80,
      "country": "US",
      "state": "NJ",
      "postcode": "",
      "city": "",
      "rate": "7.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 28,
      "class": "standard"
    },
    {
      "id": 81,
      "country": "US",
      "state": "NM",
      "postcode": "",
      "city": "",
      "rate": "5.1250",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 29,
      "class": "standard"
    },
    {
      "id": 82,
      "country": "US",
      "state": "NY",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 30,
      "class": "standard"
    },
    {
      "id": 83,
      "country": "US",
      "state": "NC",
      "postcode": "",
      "city": "",
      "rate": "4.7500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 31,
      "class": "standard"
    },
    {
      "id": 84,
      "country": "US",
      "state": "ND",
      "postcode": "",
      "city": "",
      "rate": "5.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 32,
      "class": "standard"
    },
    {
      "id": 85,
      "country": "US",
      "state": "OH",
      "postcode": "",
      "city": "",
      "rate": "5.7500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 33,
      "class": "standard"
    },
    {
      "id": 86,
      "country": "US",
      "state": "OK",
      "postcode": "",
      "city": "",
      "rate": "4.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 34,
      "class": "standard"
    },
    {
      "id": 87,
      "country": "US",
      "state": "PA",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 35,
      "class": "standard"
    },
    {
      "id": 88,
      "country": "US",
      "state": "PR",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 36,
      "class": "standard"
    },
    {
      "id": 89,
      "country": "US",
      "state": "RI",
      "postcode": "",
      "city": "",
      "rate": "7.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 37,
      "class": "standard"
    },
    {
      "id": 90,
      "country": "US",
      "state": "SC",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 38,
      "class": "standard"
    },
    {
      "id": 91,
      "country": "US",
      "state": "SD",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 39,
      "class": "standard"
    },
    {
      "id": 92,
      "country": "US",
      "state": "TN",
      "postcode": "",
      "city": "",
      "rate": "7.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 40,
      "class": "standard"
    },
    {
      "id": 93,
      "country": "US",
      "state": "TX",
      "postcode": "",
      "city": "",
      "rate": "6.2500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 41,
      "class": "standard"
    },
    {
      "id": 94,
      "country": "US",
      "state": "UT",
      "postcode": "",
      "city": "",
      "rate": "5.9500",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 42,
      "class": "standard"
    },
    {
      "id": 95,
      "country": "US",
      "state": "VT",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 43,
      "class": "standard"
    },
    {
      "id": 96,
      "country": "US",
      "state": "VA",
      "postcode": "",
      "city": "",
      "rate": "5.3000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": false,
      "order": 44,
      "class": "standard"
    },
    {
      "id": 97,
      "country": "US",
      "state": "WA",
      "postcode": "",
      "city": "",
      "rate": "6.5000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 45,
      "class": "standard"
    },
    {
      "id": 98,
      "country": "US",
      "state": "WV",
      "postcode": "",
      "city": "",
      "rate": "6.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 46,
      "class": "standard"
    },
    {
      "id": 99,
      "country": "US",
      "state": "WI",
      "postcode": "",
      "city": "",
      "rate": "5.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 47,
      "class": "standard"
    },
    {
      "id": 100,
      "country": "US",
      "state": "WY",
      "postcode": "",
      "city": "",
      "rate": "4.0000",
      "name": "State Tax",
      "priority": 1,
      "compound": false,
      "shipping": true,
      "order": 48,
      "class": "standard"
    }
  ]
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## Delete a Tax Rate ##

This API helps you delete a tax rate.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wc-api/v3/taxes/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wc-api/v3/taxes/53 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('taxes/53', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('taxes/53')); ?>
```

```python
print(wcapi.delete("taxes/53").json())
```

```ruby
woocommerce.delete("taxes/53").parsed_response
```

> JSON response example:

```json
{
  "message": "Deleted tax"
}
```

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>

## View Tax Rate Count ##

This API lets you retrieve a count of all tax rates.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wc-api/v3/taxes/count</h6>
	</div>
</div>

```shell
curl https://example.com/wc-api/v3/taxes/count \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('taxes/count', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('taxes/53')); ?>
```

```python
print(wcapi.get("taxes/count").json())
```

```ruby
woocommerce.get("taxes/count").parsed_response
```

> JSON response example:

```json
{
  "count": 48
}
```

#### Available Filters ####

|      Filter      |  Type  |                            Description                            |
| ---------------- | ------ | ----------------------------------------------------------------- |
| `tax_rate_class` | string | Tax rates by class. eg: `standard`, `reduced-rate` or `zero-rate` |

<aside class="notice">
	Endpoint introduced since WooCommerce 2.5.
</aside>
