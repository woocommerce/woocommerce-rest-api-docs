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
