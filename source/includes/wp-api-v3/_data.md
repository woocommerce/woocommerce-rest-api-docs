# Data #

The data API allows you to view all types of data available.

## List all data ##

This API lets you retrieve and view a simple list of available data endpoints.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/data</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/data \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('data', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('data')); ?>
```

```python
print(wcapi.get("data").json())
```

```ruby
woocommerce.get("data").parsed_response
```

> JSON response example:

```json
[
	{
		"slug": "continents",
		"description": "List of supported continents, countries, and states.",
		"_links": {
			"self": [
				{
					"href": "https://example.com/wp-json/wc/v3/data/continents"
				}
			],
			"collection": [
				{
					"href": "https://example.com/wp-json/wc/v3/data"
				}
			]
		}
	},
	{
		"slug": "countries",
		"description": "List of supported states in a given country.",
		"_links": {
			"self": [
				{
					"href": "https://example.com/wp-json/wc/v3/data/countries"
				}
			],
			"collection": [
				{
					"href": "https://example.com/wp-json/wc/v3/data"
				}
			]
		}
	},
	{
		"slug": "currencies",
		"description": "List of supported currencies.",
		"_links": {
			"self": [
				{
					"href": "https://example.com/wp-json/wc/v3/data/currencies"
				}
			],
			"collection": [
				{
					"href": "https://example.com/wp-json/wc/v3/data"
				}
			]
		}
	}
]
```

#### Data properties ####

| Attribute     | Type   | Description                                                          |
|---------------|--------|----------------------------------------------------------------------|
| `slug`        | string | Data resource ID. <i class="label label-info">read-only</i>          |
| `description` | string | Data resource description. <i class="label label-info">read-only</i> |

## List all continents ##

This API helps you to view all the continents.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/data/continents</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/data/continents \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('data/continents', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
print_r($woocommerce->get('data/continents'));
?>
```

```python
print(wcapi.get("data/continents").json())
```

```ruby
woocommerce.get("data/continents").parsed_response
```

> JSON response example:

```json
[
	{
		"code": "AF",
		"name": "Africa",
		"countries": [
			{
				"code": "AO",
				"name": "Angola",
				"states": [
					{
						"code": "BGO",
						"name": "Bengo"
					},
					{
						"code": "BLU",
						"name": "Benguela"
					},
					{
						"code": "BIE",
						"name": "Bié"
					},
					{
						"code": "CAB",
						"name": "Cabinda"
					},
					{
						"code": "CNN",
						"name": "Cunene"
					},
					{
						"code": "HUA",
						"name": "Huambo"
					},
					{
						"code": "HUI",
						"name": "Huíla"
					},
					{
						"code": "CCU",
						"name": "Kuando Kubango"
					},
					{
						"code": "CNO",
						"name": "Kwanza-Norte"
					},
					{
						"code": "CUS",
						"name": "Kwanza-Sul"
					},
					{
						"code": "LUA",
						"name": "Luanda"
					},
					{
						"code": "LNO",
						"name": "Lunda-Norte"
					},
					{
						"code": "LSU",
						"name": "Lunda-Sul"
					},
					{
						"code": "MAL",
						"name": "Malanje"
					},
					{
						"code": "MOX",
						"name": "Moxico"
					},
					{
						"code": "NAM",
						"name": "Namibe"
					},
					{
						"code": "UIG",
						"name": "Uíge"
					},
					{
						"code": "ZAI",
						"name": "Zaire"
					}
				]
			},
			{
				"code": "BF",
				"name": "Burkina Faso",
				"states": []
			},
			{
				"code": "BI",
				"name": "Burundi",
				"states": []
			}
		],
		"_links": {
			"self": [
				{
					"href": "https://example.com/wp-json/wc/v3/data/continents/af"
				}
			],
			"collection": [
				{
					"href": "https://example.com/wp-json/wc/v3/data/continents"
				}
			]
		}
  }
]
```

#### Continents properties ####

| Attribute   | Type   | Description                                                                                                                                              |
|-------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| `code`      | string | 2 character continent code. <i class="label label-info">read-only</i>                                                                                    |
| `name`      | string | Full name of continent. <i class="label label-info">read-only</i>                                                                                        |
| `countries` | array  | List of countries on this continent. See [Continents - Countries properties](#continents-countries-properties) <i class="label label-info">read-only</i> |

##### Continents - Countries properties #####

| Attribute        | Type    | Description                                                                                                                                                         |
|------------------|---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `code`           | string  | ISO3166 alpha-2 country code. <i class="label label-info">read-only</i>                                                                                             |
| `currency_code`  | string  | Default ISO4127 alpha-3 currency code for the country. <i class="label label-info">read-only</i>                                                                    |
| `currency_pos`   | string  | Currency symbol position for this country. <i class="label label-info">read-only</i>                                                                                |
| `decimal_sep`    | string  | Decimal separator for displayed prices for this country. <i class="label label-info">read-only</i>                                                                  |
| `dimension_unit` | string  | The unit lengths are defined in for this country. <i class="label label-info">read-only</i>                                                                         |
| `name`           | string  | Full name of country. <i class="label label-info">read-only</i>                                                                                                     |
| `num_decimals`   | integer | Number of decimal points shown in displayed prices for this country. <i class="label label-info">read-only</i>                                                      |
| `states`         | array   | List of states in this country. See [Continents - Countries - States properties](#continents-countries-states-properties) <i class="label label-info">read-only</i> |
| `thousand_sep`   | string  | Thousands separator for displayed prices in this country. <i class="label label-info">read-only</i>                                                                 |
| `weight_unit`    | string  | The unit weights are defined in for this country. <i class="label label-info">read-only</i>                                                                         |

##### Continents - Countries - States properties #####

| Attribute | Type   | Description                                                   |
|-----------|--------|---------------------------------------------------------------|
| `code`    | string | State code. <i class="label label-info">read-only</i>         |
| `name`    | string | Full name of state. <i class="label label-info">read-only</i> |

## Retrieve continents data ##

This API lets you retrieve and view a continent data.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/data/continents/&lt;code&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/data/continents/eu \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('data/continents/eu', function(err, data, res) {
  console.log(res);
});
```

```php
<?php
print_r($woocommerce->get('data/continents/eu'));
?>
```

```python
print(wcapi.get("data/continents/eu").json())
```

```ruby
woocommerce.get("data/continents/eu").parsed_response
```

> JSON response example:

```json
{
	"code": "EU",
	"name": "Europe",
	"countries": [
		{
			"code": "AD",
			"name": "Andorra",
			"states": []
		},
		{
			"code": "AL",
			"name": "Albania",
			"states": []
		},
		{
			"code": "AT",
			"name": "Austria",
			"states": []
		},
		{
			"code": "AX",
			"name": "&#197;land Islands",
			"states": []
		},
		{
			"code": "BA",
			"name": "Bosnia and Herzegovina",
			"states": []
		},
		{
			"code": "BE",
			"name": "Belgium",
			"currency_code": "EUR",
			"currency_pos": "left",
			"decimal_sep": ",",
			"dimension_unit": "cm",
			"num_decimals": 2,
			"thousand_sep": " ",
			"weight_unit": "kg",
			"states": []
		},
		{
			"code": "BG",
			"name": "Bulgaria",
			"states": [
				{
					"code": "BG-01",
					"name": "Blagoevgrad"
				},
				{
					"code": "BG-02",
					"name": "Burgas"
				},
				{
					"code": "BG-08",
					"name": "Dobrich"
				},
				{
					"code": "BG-07",
					"name": "Gabrovo"
				},
				{
					"code": "BG-26",
					"name": "Haskovo"
				},
				{
					"code": "BG-09",
					"name": "Kardzhali"
				},
				{
					"code": "BG-10",
					"name": "Kyustendil"
				},
				{
					"code": "BG-11",
					"name": "Lovech"
				},
				{
					"code": "BG-12",
					"name": "Montana"
				},
				{
					"code": "BG-13",
					"name": "Pazardzhik"
				},
				{
					"code": "BG-14",
					"name": "Pernik"
				},
				{
					"code": "BG-15",
					"name": "Pleven"
				},
				{
					"code": "BG-16",
					"name": "Plovdiv"
				},
				{
					"code": "BG-17",
					"name": "Razgrad"
				},
				{
					"code": "BG-18",
					"name": "Ruse"
				},
				{
					"code": "BG-27",
					"name": "Shumen"
				},
				{
					"code": "BG-19",
					"name": "Silistra"
				},
				{
					"code": "BG-20",
					"name": "Sliven"
				},
				{
					"code": "BG-21",
					"name": "Smolyan"
				},
				{
					"code": "BG-23",
					"name": "Sofia"
				},
				{
					"code": "BG-22",
					"name": "Sofia-Grad"
				},
				{
					"code": "BG-24",
					"name": "Stara Zagora"
				},
				{
					"code": "BG-25",
					"name": "Targovishte"
				},
				{
					"code": "BG-03",
					"name": "Varna"
				},
				{
					"code": "BG-04",
					"name": "Veliko Tarnovo"
				},
				{
					"code": "BG-05",
					"name": "Vidin"
				},
				{
					"code": "BG-06",
					"name": "Vratsa"
				},
				{
					"code": "BG-28",
					"name": "Yambol"
				}
			]
		}
	],
	"_links": {
		"self": [
			{
				"href": "https://example.com/wp-json/wc/v3/data/continents/eu"
			}
		],
		"collection": [
			{
				"href": "https://example.com/wp-json/wc/v3/data/continents"
			}
		]
	}
}
```

#### Continents properties ####

See [list of continents properties](#continents-properties).
