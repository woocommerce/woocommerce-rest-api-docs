# Tax - Classes #

This section lists all API endpoints that can be used to create, edit or otherwise manipulate tax classes.

## Taxes Properties ##

| Attribute |  Type  |                                  Description                                  |
|-----------|--------|-------------------------------------------------------------------------------|
| `slug`    | string | Unique identifier for the resource. <i class="label label-info">read-only</i> |
| `name`    | string | Tax class name. <i class="label label-info">required</i>                      |

## Create a Tax Class ##

This API helps you to create a new tax class.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v1/taxes/classes</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v1/taxes/classes \
    -u consumer_key:consumer_secret \
    -H "Content-Type: application/json" \
    -d '{
  "name": "Zero Rate"
}'
```

```javascript
var data = {
  name: 'Zero Rate'
};

WooCommerce.post('taxes/classes', data, function(err, data, res) {
  console.log(res);
});
```

```php
<?php
$data = [
    'name' => 'Zero Rate'
];

print_r($woocommerce->post('taxes/classes', $data));
?>
```

```python
data = {
    "name": "Zero Rate"
}

print(wcapi.post("taxes/classes", data).json())
```

```ruby
data = {
  name: "Zero Rate"
}

woocommerce.post("taxes/classes", data).parsed_response
```

> JSON response example:

```json
{
  "slug": "zero-rate",
  "name": "Zero Rate",
  "_links": {
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/taxes/classes"
      }
    ]
  }
}
```

## View List of Tax Classes ##

This API helps you to view all the tax classes.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1/taxes/classes</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1/taxes/classes \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get('taxes/classes', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('taxes/classes')); ?>
```

```python
print(wcapi.get("taxes/classes").json())
```

```ruby
woocommerce.get("taxes/classes").parsed_response
```

> JSON response example:

```json
[
  {
    "slug": "standard",
    "name": "Standard Rate",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/taxes/classes"
        }
      ]
    }
  },
  {
    "slug": "reduced-rate",
    "name": "Reduced Rate",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/taxes/classes"
        }
      ]
    }
  },
  {
    "slug": "zero-rate",
    "name": "Zero Rate",
    "_links": {
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v1/taxes/classes"
        }
      ]
    }
  }
]
```

## Delete a Tax Class ##

This API helps you delete a tax class.

<aside class="warning">
	This also will delete all tax rates from the selected class.
</aside>

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v1/taxes/classes/&lt;slug&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v1/taxes/classes/zero-rate?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete('taxes/classes/zero-rate?force=true', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->delete('taxes/classes/zero-rate', ['force' => true])); ?>
```

```python
print(wcapi.delete("taxes/classes/zero-rate?force=true").json())
```

```ruby
woocommerce.delete("taxes/classes/zero-rate", force: true).parsed_response
```

> JSON response example:

```json
{
  "slug": "zero-rate",
  "name": "Zero Rate",
  "_links": {
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v1/taxes/classes"
      }
    ]
  }
}
```

#### Available Parameters ####

| Parameter |  Type  |                          Description                          |
|-----------|--------|---------------------------------------------------------------|
| `force`   | string | Required to be `true`, as resource does not support trashing. |
