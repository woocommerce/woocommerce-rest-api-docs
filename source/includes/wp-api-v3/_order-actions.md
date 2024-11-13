# Order actions #

The order actions API allows you to perform specific actions with existing orders like you can from the Edit Order screen in the web app.

_Note: currently only one action is available, other actions will introduced at a later time._

## Send order details to customer ##

This endpoint allows you to trigger an email to the customer with the details of their order, if the order contains a customer email address.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v3/orders/&lt;id&gt;/actions/send_order_details</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v3/orders/723/actions/send_order_details \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.post("orders/723/actions/send_order_details")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php
print_r($woocommerce->post('orders/723/actions/send_order_details'));
?>
```

```python
print(wcapi.post("orders/723/actions/send_order_details").json())
```

```ruby
woocommerce.post("orders/723/actions/send_order_details").parsed_response
```

> JSON response examples:

```json
{
  "message": "Order details sent to woo@example.com, via REST API."
}
```

```json
{
	"code": "woocommerce_rest_missing_email",
	"message": "Order does not have an email address.",
	"data": {
		"status": 400
	}
}
```
