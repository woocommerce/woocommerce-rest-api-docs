# Payment gateways #

The payment gateways API allows you to view, and update individual payment gateways. Results are not paginated - all gateways will be returned.

## Payment gateway properties ##

| Attribute            | Type    | Description                                                                                                 |
|----------------------|---------|-------------------------------------------------------------------------------------------------------------|
| `id`                 | string  | Payment gateway ID. <i class="label label-info">read-only</i>                                               |
| `title`              | string  | Payment gateway title on checkout.                                                                          |
| `description`        | string  | Payment gateway description on checkout.                                                                    |
| `order`              | integer | Payment gateway sort order.                                                                                 |
| `enabled`            | boolean | Payment gateway enabled status.                                                                             |
| `method_title`       | string  | Payment gateway method title. <i class="label label-info">read-only</i>                                     |
| `method_description` | string  | Payment gateway method description. <i class="label label-info">read-only</i>                               |
| `method_supports`    | array   | Supported features for this payment gateway. <i class="label label-info">read-only</i>                      |
| `settings`           | object  | Payment gateway settings. See [Payment gateway - Settings properties](#payment-gateway-settings-properties) |

### Payment gateway - Settings properties ###

| Attribute     | Type   | Description                                                                                                                                                                                     |
|---------------|--------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`          | string | A unique identifier for the setting. <i class="label label-info">read-only</i>                                                                                                                  |
| `label`       | string | A human readable label for the setting used in interfaces. <i class="label label-info">read-only</i>                                                                                            |
| `description` | string | A human readable description for the setting used in interfaces. <i class="label label-info">read-only</i>                                                                                      |
| `type`        | string | Type of setting. Options: `text`, `email`, `number`, `color`, `password`, `textarea`, `select`, `multiselect`, `radio`, `image_width` and `checkbox`. <i class="label label-info">read-only</i> |
| `value`       | string | Setting value.                                                                                                                                                                                  |
| `default`     | string | Default value for the setting. <i class="label label-info">read-only</i>                                                                                                                        |
| `tip`         | string | Additional help text shown to the user about the setting. <i class="label label-info">read-only</i>                                                                                             |
| `placeholder` | string | Placeholder text to be displayed in text inputs. <i class="label label-info">read-only</i>                                                                                                      |

## Retrieve an payment gateway ##

This API lets you retrieve and view a specific payment gateway.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/payment_gateways/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/payment_gateways/bacs \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("payment_gateways/bacs")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('payment_gateways/bacs')); ?>
```

```python
print(wcapi.get("payment_gateways/bacs").json())
```

```ruby
woocommerce.get("payment_gateways/bacs").parsed_response
```

> JSON response example:

```json
{
  "id": "bacs",
  "title": "Direct bank transfer",
  "description": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
  "order": 0,
  "enabled": true,
  "method_title": "BACS",
  "method_description": "Allows payments by BACS, more commonly known as direct bank/wire transfer.",
  "method_supports": [
    "products"
  ],
  "settings": {
    "title": {
      "id": "title",
      "label": "Title",
      "description": "This controls the title which the user sees during checkout.",
      "type": "text",
      "value": "Direct bank transfer",
      "default": "Direct bank transfer",
      "tip": "This controls the title which the user sees during checkout.",
      "placeholder": ""
    },
    "instructions": {
      "id": "instructions",
      "label": "Instructions",
      "description": "Instructions that will be added to the thank you page and emails.",
      "type": "textarea",
      "value": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
      "default": "",
      "tip": "Instructions that will be added to the thank you page and emails.",
      "placeholder": ""
    }
  },
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/payment_gateways/bacs"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/payment_gateways"
      }
    ]
  }
}
```

## List all payment gateways ##

This API helps you to view all the payment gateways.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v3/payment_gateways</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v3/payment_gateways \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("payment_gateways")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('payment_gateways')); ?>
```

```python
print(wcapi.get("payment_gateways").json())
```

```ruby
woocommerce.get("payment_gateways").parsed_response
```

> JSON response example:

```json
[
  {
    "id": "bacs",
    "title": "Direct bank transfer",
    "description": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
    "order": 0,
    "enabled": true,
    "method_title": "BACS",
    "method_description": "Allows payments by BACS, more commonly known as direct bank/wire transfer.",
    "method_supports": [
      "products"
    ],
    "settings": {
      "title": {
        "id": "title",
        "label": "Title",
        "description": "This controls the title which the user sees during checkout.",
        "type": "text",
        "value": "Direct bank transfer",
        "default": "Direct bank transfer",
        "tip": "This controls the title which the user sees during checkout.",
        "placeholder": ""
      },
      "instructions": {
        "id": "instructions",
        "label": "Instructions",
        "description": "Instructions that will be added to the thank you page and emails.",
        "type": "textarea",
        "value": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
        "default": "",
        "tip": "Instructions that will be added to the thank you page and emails.",
        "placeholder": ""
      }
    },
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways/bacs"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways"
        }
      ]
    }
  },
  {
    "id": "cheque",
    "title": "Check payments",
    "description": "Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.",
    "order": 1,
    "enabled": false,
    "method_title": "Check payments",
    "method_description": "Allows check payments. Why would you take checks in this day and age? Well you probably wouldn't but it does allow you to make test purchases for testing order emails and the 'success' pages etc.",
    "method_supports": [
      "products"
    ],
    "settings": {
      "title": {
        "id": "title",
        "label": "Title",
        "description": "This controls the title which the user sees during checkout.",
        "type": "text",
        "value": "Check payments",
        "default": "Check payments",
        "tip": "This controls the title which the user sees during checkout.",
        "placeholder": ""
      },
      "instructions": {
        "id": "instructions",
        "label": "Instructions",
        "description": "Instructions that will be added to the thank you page and emails.",
        "type": "textarea",
        "value": "",
        "default": "",
        "tip": "Instructions that will be added to the thank you page and emails.",
        "placeholder": ""
      }
    },
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways/cheque"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways"
        }
      ]
    }
  },
  {
    "id": "cod",
    "title": "Cash on delivery",
    "description": "Pay with cash upon delivery.",
    "order": 2,
    "enabled": false,
    "method_title": "Cash on delivery",
    "method_description": "Have your customers pay with cash (or by other means) upon delivery.",
    "method_supports": [
      "products"
    ],
    "settings": {
      "title": {
        "id": "title",
        "label": "Title",
        "description": "Payment method description that the customer will see on your checkout.",
        "type": "text",
        "value": "Cash on delivery",
        "default": "Cash on delivery",
        "tip": "Payment method description that the customer will see on your checkout.",
        "placeholder": ""
      },
      "instructions": {
        "id": "instructions",
        "label": "Instructions",
        "description": "Instructions that will be added to the thank you page.",
        "type": "textarea",
        "value": "",
        "default": "Pay with cash upon delivery.",
        "tip": "Instructions that will be added to the thank you page.",
        "placeholder": ""
      },
      "enable_for_methods": {
        "id": "enable_for_methods",
        "label": "Enable for shipping methods",
        "description": "If COD is only available for certain methods, set it up here. Leave blank to enable for all methods.",
        "type": "multiselect",
        "value": "",
        "default": "",
        "tip": "If COD is only available for certain methods, set it up here. Leave blank to enable for all methods.",
        "placeholder": "",
        "options": {
          "flat_rate": "Flat rate",
          "free_shipping": "Free shipping",
          "local_pickup": "Local pickup"
        }
      },
      "enable_for_virtual": {
        "id": "enable_for_virtual",
        "label": "Accept COD if the order is virtual",
        "description": "",
        "type": "checkbox",
        "value": "yes",
        "default": "yes",
        "tip": "",
        "placeholder": ""
      }
    },
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways/cod"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways"
        }
      ]
    }
  },
  {
    "id": "paypal",
    "title": "PayPal",
    "description": "Pay via PayPal; you can pay with your credit card if you don't have a PayPal account.",
    "order": 3,
    "enabled": true,
    "method_title": "PayPal",
    "method_description": "PayPal Standard sends customers to PayPal to enter their payment information. PayPal IPN requires fsockopen/cURL support to update order statuses after payment. Check the <a href=\"https://example.com/wp-admin/admin.php?page=wc-status\">system status</a> page for more details.",
    "method_supports": [
      "products",
      "refunds"
    ],
    "settings": {
      "title": {
        "id": "title",
        "label": "Title",
        "description": "This controls the title which the user sees during checkout.",
        "type": "text",
        "value": "PayPal",
        "default": "PayPal",
        "tip": "This controls the title which the user sees during checkout.",
        "placeholder": ""
      },
      "email": {
        "id": "email",
        "label": "PayPal email",
        "description": "Please enter your PayPal email address; this is needed in order to take payment.",
        "type": "email",
        "value": "me@example.com",
        "default": "me@example.com",
        "tip": "Please enter your PayPal email address; this is needed in order to take payment.",
        "placeholder": "you@youremail.com"
      },
      "testmode": {
        "id": "testmode",
        "label": "Enable PayPal sandbox",
        "description": "PayPal sandbox can be used to test payments. Sign up for a <a href=\"https://developer.paypal.com/\">developer account</a>.",
        "type": "checkbox",
        "value": "yes",
        "default": "no",
        "tip": "PayPal sandbox can be used to test payments. Sign up for a <a href=\"https://developer.paypal.com/\">developer account</a>.",
        "placeholder": ""
      },
      "debug": {
        "id": "debug",
        "label": "Enable logging",
        "description": "Log PayPal events, such as IPN requests, inside <code>/var/www/woocommerce/wp-content/uploads/wc-logs/paypal-de01f7c6894774e7ac8e4207bb8bac2f.log</code>",
        "type": "checkbox",
        "value": "yes",
        "default": "no",
        "tip": "Log PayPal events, such as IPN requests, inside <code>/var/www/woocommerce/wp-content/uploads/wc-logs/paypal-de01f7c6894774e7ac8e4207bb8bac2f.log</code>",
        "placeholder": ""
      },
      "receiver_email": {
        "id": "receiver_email",
        "label": "Receiver email",
        "description": "If your main PayPal email differs from the PayPal email entered above, input your main receiver email for your PayPal account here. This is used to validate IPN requests.",
        "type": "email",
        "value": "me@example.com",
        "default": "",
        "tip": "If your main PayPal email differs from the PayPal email entered above, input your main receiver email for your PayPal account here. This is used to validate IPN requests.",
        "placeholder": "you@youremail.com"
      },
      "identity_token": {
        "id": "identity_token",
        "label": "PayPal identity token",
        "description": "Optionally enable \"Payment Data Transfer\" (Profile > Profile and Settings > My Selling Tools > Website Preferences) and then copy your identity token here. This will allow payments to be verified without the need for PayPal IPN.",
        "type": "text",
        "value": "",
        "default": "",
        "tip": "Optionally enable \"Payment Data Transfer\" (Profile > Profile and Settings > My Selling Tools > Website Preferences) and then copy your identity token here. This will allow payments to be verified without the need for PayPal IPN.",
        "placeholder": ""
      },
      "invoice_prefix": {
        "id": "invoice_prefix",
        "label": "Invoice prefix",
        "description": "Please enter a prefix for your invoice numbers. If you use your PayPal account for multiple stores ensure this prefix is unique as PayPal will not allow orders with the same invoice number.",
        "type": "text",
        "value": "WC-",
        "default": "WC-",
        "tip": "Please enter a prefix for your invoice numbers. If you use your PayPal account for multiple stores ensure this prefix is unique as PayPal will not allow orders with the same invoice number.",
        "placeholder": ""
      },
      "send_shipping": {
        "id": "send_shipping",
        "label": "Send shipping details to PayPal instead of billing.",
        "description": "PayPal allows us to send one address. If you are using PayPal for shipping labels you may prefer to send the shipping address rather than billing.",
        "type": "checkbox",
        "value": "no",
        "default": "no",
        "tip": "PayPal allows us to send one address. If you are using PayPal for shipping labels you may prefer to send the shipping address rather than billing.",
        "placeholder": ""
      },
      "address_override": {
        "id": "address_override",
        "label": "Enable \"address_override\" to prevent address information from being changed.",
        "description": "PayPal verifies addresses therefore this setting can cause errors (we recommend keeping it disabled).",
        "type": "checkbox",
        "value": "no",
        "default": "no",
        "tip": "PayPal verifies addresses therefore this setting can cause errors (we recommend keeping it disabled).",
        "placeholder": ""
      },
      "paymentaction": {
        "id": "paymentaction",
        "label": "Payment action",
        "description": "Choose whether you wish to capture funds immediately or authorize payment only.",
        "type": "select",
        "value": "sale",
        "default": "sale",
        "tip": "Choose whether you wish to capture funds immediately or authorize payment only.",
        "placeholder": "",
        "options": {
          "sale": "Capture",
          "authorization": "Authorize"
        }
      },
      "page_style": {
        "id": "page_style",
        "label": "Page style",
        "description": "Optionally enter the name of the page style you wish to use. These are defined within your PayPal account. This affects classic PayPal checkout screens.",
        "type": "text",
        "value": "",
        "default": "",
        "tip": "Optionally enter the name of the page style you wish to use. These are defined within your PayPal account. This affects classic PayPal checkout screens.",
        "placeholder": "Optional"
      },
      "image_url": {
        "id": "image_url",
        "label": "Image url",
        "description": "Optionally enter the URL to a 150x50px image displayed as your logo in the upper left corner of the PayPal checkout pages.",
        "type": "text",
        "value": "",
        "default": "",
        "tip": "Optionally enter the URL to a 150x50px image displayed as your logo in the upper left corner of the PayPal checkout pages.",
        "placeholder": "Optional"
      },
      "api_username": {
        "id": "api_username",
        "label": "API username",
        "description": "Get your API credentials from PayPal.",
        "type": "text",
        "value": "",
        "default": "",
        "tip": "Get your API credentials from PayPal.",
        "placeholder": "Optional"
      },
      "api_password": {
        "id": "api_password",
        "label": "API password",
        "description": "Get your API credentials from PayPal.",
        "type": "password",
        "value": "",
        "default": "",
        "tip": "Get your API credentials from PayPal.",
        "placeholder": "Optional"
      },
      "api_signature": {
        "id": "api_signature",
        "label": "API signature",
        "description": "Get your API credentials from PayPal.",
        "type": "text",
        "value": "",
        "default": "",
        "tip": "Get your API credentials from PayPal.",
        "placeholder": "Optional"
      }
    },
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways/paypal"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v3/payment_gateways"
        }
      ]
    }
  }
]
```

## Update a payment gateway ##

This API lets you make changes to a payment gateway.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v3/payment_gateways/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v3/payment_gateways/bacs \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "enabled": false
}'
```

```javascript
const data = {
  enabled: true
};

WooCommerce.put("payment_gateways/bacs", data)
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
    'enabled' => true
];

print_r($woocommerce->put('payment_gateways/bacs', $data));
?>
```

```python
data = {
    "enabled": True
}

print(wcapi.put("payment_gateways/bacs", data).json())
```

```ruby
data = {
  enabled: true
}

woocommerce.put("payment_gateways/bacs", data).parsed_response
```

> JSON response example:

```json
{
  "id": "bacs",
  "title": "Direct bank transfer",
  "description": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
  "order": 0,
  "enabled": false,
  "method_title": "BACS",
  "method_description": "Allows payments by BACS, more commonly known as direct bank/wire transfer.",
  "method_supports": [
    "products"
  ],
  "settings": {
    "title": {
      "id": "title",
      "label": "Title",
      "description": "This controls the title which the user sees during checkout.",
      "type": "text",
      "value": "Direct bank transfer",
      "default": "Direct bank transfer",
      "tip": "This controls the title which the user sees during checkout.",
      "placeholder": ""
    },
    "instructions": {
      "id": "instructions",
      "label": "Instructions",
      "description": "Instructions that will be added to the thank you page and emails.",
      "type": "textarea",
      "value": "Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.",
      "default": "",
      "tip": "Instructions that will be added to the thank you page and emails.",
      "placeholder": ""
    }
  },
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v3/payment_gateways/bacs"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v3/payment_gateways"
      }
    ]
  }
}
```
