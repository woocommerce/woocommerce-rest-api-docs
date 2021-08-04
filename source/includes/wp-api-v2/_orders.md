# Orders #

The orders API allows you to create, view, update, and delete individual, or a batch, of orders.

## Order properties ##

| Attribute              | Type      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|------------------------|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                   | integer   | Unique identifier for the resource. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `parent_id`            | integer   | Parent order ID.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `number`               | string    | Order number. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `order_key`            | string    | Order key. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `created_via`          | string    | Shows where the order was created. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `version`              | string    | Version of WooCommerce which last updated the order. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `status`               | string    | Order status. Options: `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded`, `failed` and `trash`. Default is `pending`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `currency`             | string    | Currency the order was created with, in ISO format. Options: `AED`, `AFN`, `ALL`, `AMD`, `ANG`, `AOA`, `ARS`, `AUD`, `AWG`, `AZN`, `BAM`, `BBD`, `BDT`, `BGN`, `BHD`, `BIF`, `BMD`, `BND`, `BOB`, `BRL`, `BSD`, `BTC`, `BTN`, `BWP`, `BYR`, `BZD`, `CAD`, `CDF`, `CHF`, `CLP`, `CNY`, `COP`, `CRC`, `CUC`, `CUP`, `CVE`, `CZK`, `DJF`, `DKK`, `DOP`, `DZD`, `EGP`, `ERN`, `ETB`, `EUR`, `FJD`, `FKP`, `GBP`, `GEL`, `GGP`, `GHS`, `GIP`, `GMD`, `GNF`, `GTQ`, `GYD`, `HKD`, `HNL`, `HRK`, `HTG`, `HUF`, `IDR`, `ILS`, `IMP`, `INR`, `IQD`, `IRR`, `IRT`, `ISK`, `JEP`, `JMD`, `JOD`, `JPY`, `KES`, `KGS`, `KHR`, `KMF`, `KPW`, `KRW`, `KWD`, `KYD`, `KZT`, `LAK`, `LBP`, `LKR`, `LRD`, `LSL`, `LYD`, `MAD`, `MDL`, `MGA`, `MKD`, `MMK`, `MNT`, `MOP`, `MRO`, `MUR`, `MVR`, `MWK`, `MXN`, `MYR`, `MZN`, `NAD`, `NGN`, `NIO`, `NOK`, `NPR`, `NZD`, `OMR`, `PAB`, `PEN`, `PGK`, `PHP`, `PKR`, `PLN`, `PRB`, `PYG`, `QAR`, `RON`, `RSD`, `RUB`, `RWF`, `SAR`, `SBD`, `SCR`, `SDG`, `SEK`, `SGD`, `SHP`, `SLL`, `SOS`, `SRD`, `SSP`, `STD`, `SYP`, `SZL`, `THB`, `TJS`, `TMT`, `TND`, `TOP`, `TRY`, `TTD`, `TWD`, `TZS`, `UAH`, `UGX`, `USD`, `UYU`, `UZS`, `VEF`, `VND`, `VUV`, `WST`, `XAF`, `XCD`, `XOF`, `XPF`, `YER`, `ZAR` and `ZMW`. Default is `USD`. |
| `date_created`         | date-time | The date the order was created, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `date_created_gmt`     | date-time | The date the order was created, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `date_modified`        | date-time | The date the order was last modified, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `date_modified_gmt`    | date-time | The date the order was last modified, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `discount_total`       | string    | Total discount amount for the order. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `discount_tax`         | string    | Total discount tax amount for the order. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `shipping_total`       | string    | Total shipping amount for the order. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `shipping_tax`         | string    | Total shipping tax amount for the order. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `cart_tax`             | string    | Sum of line item taxes only. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `total`                | string    | Grand total. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `total_tax`            | string    | Sum of all taxes. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `prices_include_tax`   | boolean   | True the prices included tax during checkout. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `customer_id`          | integer   | User ID who owns the order. 0 for guests. Default is `0`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `customer_ip_address`  | string    | Customer's IP address. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `customer_user_agent`  | string    | User agent of the customer. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `customer_note`        | string    | Note left by customer during checkout.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `billing`              | object    | Billing address. See [Order - Billing properties](#order-billing-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `shipping`             | object    | Shipping address. See [Order - Shipping properties](#order-shipping-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `payment_method`       | string    | Payment method ID.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `payment_method_title` | string    | Payment method title.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `transaction_id`       | string    | Unique transaction ID.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `date_paid`            | date-time | The date the order was paid, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `date_paid_gmt`        | date-time | The date the order was paid, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `date_completed`       | date-time | The date the order was completed, in the site's timezone. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `date_completed_gmt`   | date-time | The date the order was completed, as GMT. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `cart_hash`            | string    | MD5 hash of cart items to ensure orders are not modified. <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `meta_data`            | array     | Meta data. See [Order - Meta data properties](#order-meta-data-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `line_items`           | array     | Line items data. See [Order - Line items properties](#order-line-items-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `tax_lines`            | array     | Tax lines data. See [Order - Tax lines properties](#order-tax-lines-properties) <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `shipping_lines`       | array     | Shipping lines data. See [Order - Shipping lines properties](#order-shipping-lines-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `fee_lines`            | array     | Fee lines data. See [Order - Fee lines properties](#order-fee-lines-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `coupon_lines`         | array     | Coupons line data. See [Order - Coupon lines properties](#order-coupon-lines-properties)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `refunds`              | array     | List of refunds. See [Order - Refunds properties](#order-refunds-properties) <i class="label label-info">read-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `set_paid`             | boolean   | Define if the order is paid. It will set the status to processing and reduce stock items. Default is `false`. <i class="label label-info">write-only</i>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

### Order - Billing properties ###

| Attribute    | Type   | Description                                          |
| ------------ | ------ | ---------------------------------------------------- |
| `first_name` | string | First name.                                          |
| `last_name`  | string | Last name.                                           |
| `company`    | string | Company name.                                        |
| `address_1`  | string | Address line 1                                       |
| `address_2`  | string | Address line 2                                       |
| `city`       | string | City name.                                           |
| `state`      | string | ISO code or name of the state, province or district. |
| `postcode`   | string | Postal code.                                         |
| `country`    | string | Country code in ISO 3166-1 alpha-2 format.           |
| `email`      | string | Email address.                                       |
| `phone`      | string | Phone number.                                        |

### Order - Shipping properties ###

| Attribute    | Type   | Description                                          |
| ------------ | ------ | ---------------------------------------------------- |
| `first_name` | string | First name.                                          |
| `last_name`  | string | Last name.                                           |
| `company`    | string | Company name.                                        |
| `address_1`  | string | Address line 1                                       |
| `address_2`  | string | Address line 2                                       |
| `city`       | string | City name.                                           |
| `state`      | string | ISO code or name of the state, province or district. |
| `postcode`   | string | Postal code.                                         |
| `country`    | string | Country code in ISO 3166-1 alpha-2 format.           |

### Order - Meta data properties ###

| Attribute | Type    | Description                                        |
| --------- | ------- | -------------------------------------------------- |
| `id`      | integer | Meta ID. <i class="label label-info">read-only</i> |
| `key`     | string  | Meta key.                                          |
| `value`   | string  | Meta value.                                        |

### Order - Line items properties ###

| Attribute      | Type    | Description                                                                                                   |
| -------------- | ------- | ------------------------------------------------------------------------------------------------------------- |
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                                            |
| `name`         | string  | Product name.                                                                                                 |
| `product_id`   | integer | Product ID.                                                                                                   |
| `variation_id` | integer | Variation ID, if applicable.                                                                                  |
| `quantity`     | integer | Quantity ordered.                                                                                             |
| `tax_class`    | integer | Tax class of product.                                                                                         |
| `subtotal`     | string  | Line subtotal (before discounts).                                                                             |
| `subtotal_tax` | string  | Line subtotal tax (before discounts). <i class="label label-info">read-only</i>                               |
| `total`        | string  | Line total (after discounts).                                                                                 |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                   |
| `taxes`        | array   | Line taxes. See [Order - Taxes properties](#order-taxes-properties) <i class="label label-info">read-only</i> |
| `meta_data`    | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties)                                    |
| `sku`          | string  | Product SKU. <i class="label label-info">read-only</i>                                                        |
| `price`        | string  | Product price. <i class="label label-info">read-only</i>                                                      |

### Order - Tax lines properties ###

| Attribute            | Type    | Description                                                                         |
| -------------------- | ------- | ----------------------------------------------------------------------------------- |
| `id`                 | integer | Item ID. <i class="label label-info">read-only</i>                                  |
| `rate_code`          | string  | Tax rate code. <i class="label label-info">read-only</i>                            |
| `rate_id`            | string  | Tax rate ID. <i class="label label-info">read-only</i>                              |
| `label`              | string  | Tax rate label. <i class="label label-info">read-only</i>                           |
| `compound`           | boolean | Show if is a compound tax rate. <i class="label label-info">read-only</i>           |
| `tax_total`          | string  | Tax total (not including shipping taxes). <i class="label label-info">read-only</i> |
| `shipping_tax_total` | string  | Shipping tax total. <i class="label label-info">read-only</i>                       |
| `meta_data`          | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties)          |

### Order - Shipping lines properties ###

| Attribute      | Type    | Description                                                                                                   |
| -------------- | ------- | ------------------------------------------------------------------------------------------------------------- |
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                                                            |
| `method_title` | string  | Shipping method name.                                                                                         |
| `method_id`    | string  | Shipping method ID.                                                                                           |
| `total`        | string  | Line total (after discounts).                                                                                 |
| `total_tax`    | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                   |
| `taxes`        | array   | Line taxes. See [Order - Taxes properties](#order-taxes-properties) <i class="label label-info">read-only</i> |
| `meta_data`    | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties)                                    |

### Order - Fee lines properties ###

| Attribute    | Type    | Description                                                                                                   |
| ------------ | ------- | ------------------------------------------------------------------------------------------------------------- |
| `id`         | integer | Item ID. <i class="label label-info">read-only</i>                                                            |
| `name`       | string  | Fee name.                                                                                                     |
| `tax_class`  | string  | Tax class of fee.                                                                                             |
| `tax_status` | string  | Tax status of fee. Options: `taxable` and `none`.                                                             |
| `total`      | string  | Line total (after discounts).                                                                                 |
| `total_tax`  | string  | Line total tax (after discounts). <i class="label label-info">read-only</i>                                   |
| `taxes`      | array   | Line taxes. See [Order - Taxes properties](#order-taxes-properties) <i class="label label-info">read-only</i> |
| `meta_data`  | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties)                                    |

### Order - Coupon lines properties ###

| Attribute      | Type    | Description                                                                |
| -------------- | ------- | -------------------------------------------------------------------------- |
| `id`           | integer | Item ID. <i class="label label-info">read-only</i>                         |
| `code`         | string  | Coupon code.                                                               |
| `discount`     | string  | Discount total.                                                            |
| `discount_tax` | string  | Discount total tax. <i class="label label-info">read-only</i>              |
| `meta_data`    | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties) |

### Order - Refunds properties ###

| Attribute | Type    | Description                                              |
| --------- | ------- | -------------------------------------------------------- |
| `id`      | integer | Refund ID. <i class="label label-info">read-only</i>     |
| `reason`  | string  | Refund reason. <i class="label label-info">read-only</i> |
| `total`   | string  | Refund total. <i class="label label-info">read-only</i>  |

### Order - Taxes properties ###

| Attribute            | Type    | Description                                                                         |
|----------------------|---------|-------------------------------------------------------------------------------------|
| `id`                 | integer | Item ID. <i class="label label-info">read-only</i>                                  |
| `rate_code`          | string  | Tax rate code. <i class="label label-info">read-only</i>                            |
| `rate_id`            | string  | Tax rate ID. <i class="label label-info">read-only</i>                              |
| `label`              | string  | Tax rate label. <i class="label label-info">read-only</i>                           |
| `compound`           | boolean | Show if is a compound tax rate. <i class="label label-info">read-only</i>           |
| `tax_total`          | string  | Tax total (not including shipping taxes). <i class="label label-info">read-only</i> |
| `shipping_tax_total` | string  | Shipping tax total. <i class="label label-info">read-only</i>                       |
| `meta_data`          | array   | Meta data. See [Order - Meta data properties](#order-meta-data-properties)          |

## Create an order ##

This API helps you to create a new order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/orders</h6>
	</div>
</div>

> Example of create a paid order:

```shell
curl -X POST https://example.com/wp-json/wc/v2/orders \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "set_paid": true,
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "line_items": [
    {
      "product_id": 93,
      "quantity": 2
    },
    {
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1
    }
  ],
  "shipping_lines": [
    {
      "method_id": "flat_rate",
      "method_title": "Flat Rate",
      "total": "10.00"
    }
  ]
}'
```

```javascript
const data = {
  payment_method: "bacs",
  payment_method_title: "Direct Bank Transfer",
  set_paid: true,
  billing: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US",
    email: "john.doe@example.com",
    phone: "(555) 555-5555"
  },
  shipping: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US"
  },
  line_items: [
    {
      product_id: 93,
      quantity: 2
    },
    {
      product_id: 22,
      variation_id: 23,
      quantity: 1
    }
  ],
  shipping_lines: [
    {
      method_id: "flat_rate",
      method_title: "Flat Rate",
      total: "10.00"
    }
  ]
};

WooCommerce.post("orders", data)
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
    'payment_method' => 'bacs',
    'payment_method_title' => 'Direct Bank Transfer',
    'set_paid' => true,
    'billing' => [
        'first_name' => 'John',
        'last_name' => 'Doe',
        'address_1' => '969 Market',
        'address_2' => '',
        'city' => 'San Francisco',
        'state' => 'CA',
        'postcode' => '94103',
        'country' => 'US',
        'email' => 'john.doe@example.com',
        'phone' => '(555) 555-5555'
    ],
    'shipping' => [
        'first_name' => 'John',
        'last_name' => 'Doe',
        'address_1' => '969 Market',
        'address_2' => '',
        'city' => 'San Francisco',
        'state' => 'CA',
        'postcode' => '94103',
        'country' => 'US'
    ],
    'line_items' => [
        [
            'product_id' => 93,
            'quantity' => 2
        ],
        [
            'product_id' => 22,
            'variation_id' => 23,
            'quantity' => 1
        ]
    ],
    'shipping_lines' => [
        [
            'method_id' => 'flat_rate',
            'method_title' => 'Flat Rate',
            'total' => '10.00'
        ]
    ]
];

print_r($woocommerce->post('orders', $data));
?>
```

```python
data = {
    "payment_method": "bacs",
    "payment_method_title": "Direct Bank Transfer",
    "set_paid": True,
    "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
    },
    "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
    },
    "line_items": [
        {
            "product_id": 93,
            "quantity": 2
        },
        {
            "product_id": 22,
            "variation_id": 23,
            "quantity": 1
        }
    ],
    "shipping_lines": [
        {
            "method_id": "flat_rate",
            "method_title": "Flat Rate",
            "total": '10.00'
        }
    ]
}

print(wcapi.post("orders", data).json())
```

```ruby
data = {
  payment_method: "bacs",
  payment_method_title: "Direct Bank Transfer",
  set_paid: true,
  billing: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US",
    email: "john.doe@example.com",
    phone: "(555) 555-5555"
  },
  shipping: {
    first_name: "John",
    last_name: "Doe",
    address_1: "969 Market",
    address_2: "",
    city: "San Francisco",
    state: "CA",
    postcode: "94103",
    country: "US"
  },
  line_items: [
    {
      product_id: 93,
      quantity: 2
    },
    {
      product_id: 22,
      variation_id: 23,
      quantity: 1
    }
  ],
  shipping_lines: [
    {
      method_id: "flat_rate",
      method_title: "Flat Rate",
      total: '10.00'
    }
  ]
}

woocommerce.post("orders", data).parsed_response
```

> JSON response example:

```json
{
  "id": 727,
  "parent_id": 0,
  "number": "727",
  "order_key": "wc_order_58d2d042d1d",
  "created_via": "rest-api",
  "version": "3.0.0",
  "status": "processing",
  "currency": "USD",
  "date_created": "2017-03-22T16:28:02",
  "date_created_gmt": "2017-03-22T19:28:02",
  "date_modified": "2017-03-22T16:28:08",
  "date_modified_gmt": "2017-03-22T19:28:08",
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.35",
  "total": "29.35",
  "total_tax": "1.35",
  "prices_include_tax": false,
  "customer_id": 0,
  "customer_ip_address": "",
  "customer_user_agent": "",
  "customer_note": "",
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "transaction_id": "",
  "date_paid": "2017-03-22T16:28:08",
  "date_paid_gmt": "2017-03-22T19:28:08",
  "date_completed": null,
  "date_completed_gmt": null,
  "cart_hash": "",
  "meta_data": [
    {
      "id": 13106,
      "key": "_download_permissions_granted",
      "value": "yes"
    }
  ],
  "line_items": [
    {
      "id": 315,
      "name": "Woo Single #1",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": "0.45",
          "subtotal": "0.45"
        }
      ],
      "meta_data": [],
      "sku": "",
      "price": 3
    },
    {
      "id": 316,
      "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "subtotal": "12.00",
      "subtotal_tax": "0.90",
      "total": "12.00",
      "total_tax": "0.90",
      "taxes": [
        {
          "id": 75,
          "total": "0.9",
          "subtotal": "0.9"
        }
      ],
      "meta_data": [
        {
          "id": 2095,
          "key": "pa_color",
          "value": "black"
        },
        {
          "id": 2096,
          "key": "size",
          "value": "M Test"
        }
      ],
      "sku": "Bar3",
      "price": 12
    }
  ],
  "tax_lines": [
    {
      "id": 318,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": 75,
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.35",
      "shipping_tax_total": "0.00",
      "meta_data": []
    }
  ],
  "shipping_lines": [
    {
      "id": 317,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": [],
      "meta_data": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders/727"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders"
      }
    ]
  }
}
```

## Retrieve an order ##

This API lets you retrieve and view a specific order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/orders/727 \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders/727")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders/727')); ?>
```

```python
print(wcapi.get("orders/727").json())
```

```ruby
woocommerce.get("orders/727").parsed_response
```

> JSON response example:

```json
{
  "id": 727,
  "parent_id": 0,
  "number": "727",
  "order_key": "wc_order_58d2d042d1d",
  "created_via": "rest-api",
  "version": "3.0.0",
  "status": "processing",
  "currency": "USD",
  "date_created": "2017-03-22T16:28:02",
  "date_created_gmt": "2017-03-22T19:28:02",
  "date_modified": "2017-03-22T16:28:08",
  "date_modified_gmt": "2017-03-22T19:28:08",
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.35",
  "total": "29.35",
  "total_tax": "1.35",
  "prices_include_tax": false,
  "customer_id": 0,
  "customer_ip_address": "",
  "customer_user_agent": "",
  "customer_note": "",
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "transaction_id": "",
  "date_paid": "2017-03-22T16:28:08",
  "date_paid_gmt": "2017-03-22T19:28:08",
  "date_completed": null,
  "date_completed_gmt": null,
  "cart_hash": "",
  "meta_data": [
    {
      "id": 13106,
      "key": "_download_permissions_granted",
      "value": "yes"
    }
  ],
  "line_items": [
    {
      "id": 315,
      "name": "Woo Single #1",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": "0.45",
          "subtotal": "0.45"
        }
      ],
      "meta_data": [],
      "sku": "",
      "price": 3
    },
    {
      "id": 316,
      "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "subtotal": "12.00",
      "subtotal_tax": "0.90",
      "total": "12.00",
      "total_tax": "0.90",
      "taxes": [
        {
          "id": 75,
          "total": "0.9",
          "subtotal": "0.9"
        }
      ],
      "meta_data": [
        {
          "id": 2095,
          "key": "pa_color",
          "value": "black"
        },
        {
          "id": 2096,
          "key": "size",
          "value": "M Test"
        }
      ],
      "sku": "Bar3",
      "price": 12
    }
  ],
  "tax_lines": [
    {
      "id": 318,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": 75,
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.35",
      "shipping_tax_total": "0.00",
      "meta_data": []
    }
  ],
  "shipping_lines": [
    {
      "id": 317,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": [],
      "meta_data": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders/727"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                    Description                    |
|-----------|--------|---------------------------------------------------|
| `dp`      | string | Number of decimal points to use in each resource. |

## List all orders ##

This API helps you to view all the orders.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v2/orders</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v2/orders \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.get("orders")
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->get('orders')); ?>
```

```python
print(wcapi.get("orders").json())
```

```ruby
woocommerce.get("orders").parsed_response
```

> JSON response example:

```json
[
  {
    "id": 727,
    "parent_id": 0,
    "number": "727",
    "order_key": "wc_order_58d2d042d1d",
    "created_via": "rest-api",
    "version": "3.0.0",
    "status": "processing",
    "currency": "USD",
    "date_created": "2017-03-22T16:28:02",
    "date_created_gmt": "2017-03-22T19:28:02",
    "date_modified": "2017-03-22T16:28:08",
    "date_modified_gmt": "2017-03-22T19:28:08",
    "discount_total": "0.00",
    "discount_tax": "0.00",
    "shipping_total": "10.00",
    "shipping_tax": "0.00",
    "cart_tax": "1.35",
    "total": "29.35",
    "total_tax": "1.35",
    "prices_include_tax": false,
    "customer_id": 0,
    "customer_ip_address": "",
    "customer_user_agent": "",
    "customer_note": "",
    "billing": {
      "first_name": "John",
      "last_name": "Doe",
      "company": "",
      "address_1": "969 Market",
      "address_2": "",
      "city": "San Francisco",
      "state": "CA",
      "postcode": "94103",
      "country": "US",
      "email": "john.doe@example.com",
      "phone": "(555) 555-5555"
    },
    "shipping": {
      "first_name": "John",
      "last_name": "Doe",
      "company": "",
      "address_1": "969 Market",
      "address_2": "",
      "city": "San Francisco",
      "state": "CA",
      "postcode": "94103",
      "country": "US"
    },
    "payment_method": "bacs",
    "payment_method_title": "Direct Bank Transfer",
    "transaction_id": "",
    "date_paid": "2017-03-22T16:28:08",
    "date_paid_gmt": "2017-03-22T19:28:08",
    "date_completed": null,
    "date_completed_gmt": null,
    "cart_hash": "",
    "meta_data": [
      {
        "id": 13106,
        "key": "_download_permissions_granted",
        "value": "yes"
      },
      {
        "id": 13109,
        "key": "_order_stock_reduced",
        "value": "yes"
      }
    ],
    "line_items": [
      {
        "id": 315,
        "name": "Woo Single #1",
        "product_id": 93,
        "variation_id": 0,
        "quantity": 2,
        "tax_class": "",
        "subtotal": "6.00",
        "subtotal_tax": "0.45",
        "total": "6.00",
        "total_tax": "0.45",
        "taxes": [
          {
            "id": 75,
            "total": "0.45",
            "subtotal": "0.45"
          }
        ],
        "meta_data": [],
        "sku": "",
        "price": 3
      },
      {
        "id": 316,
        "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
        "product_id": 22,
        "variation_id": 23,
        "quantity": 1,
        "tax_class": "",
        "subtotal": "12.00",
        "subtotal_tax": "0.90",
        "total": "12.00",
        "total_tax": "0.90",
        "taxes": [
          {
            "id": 75,
            "total": "0.9",
            "subtotal": "0.9"
          }
        ],
        "meta_data": [
          {
            "id": 2095,
            "key": "pa_color",
            "value": "black"
          },
          {
            "id": 2096,
            "key": "size",
            "value": "M Test"
          }
        ],
        "sku": "Bar3",
        "price": 12
      }
    ],
    "tax_lines": [
      {
        "id": 318,
        "rate_code": "US-CA-STATE TAX",
        "rate_id": 75,
        "label": "State Tax",
        "compound": false,
        "tax_total": "1.35",
        "shipping_tax_total": "0.00",
        "meta_data": []
      }
    ],
    "shipping_lines": [
      {
        "id": 317,
        "method_title": "Flat Rate",
        "method_id": "flat_rate",
        "total": "10.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta_data": []
      }
    ],
    "fee_lines": [],
    "coupon_lines": [],
    "refunds": [],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/orders/727"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/orders"
        }
      ]
    }
  },
  {
    "id": 723,
    "parent_id": 0,
    "number": "723",
    "order_key": "wc_order_58d17c18352",
    "created_via": "checkout",
    "version": "3.0.0",
    "status": "completed",
    "currency": "USD",
    "date_created": "2017-03-21T16:16:00",
    "date_created_gmt": "2017-03-21T19:16:00",
    "date_modified": "2017-03-21T16:54:51",
    "date_modified_gmt": "2017-03-21T19:54:51",
    "discount_total": "0.00",
    "discount_tax": "0.00",
    "shipping_total": "10.00",
    "shipping_tax": "0.00",
    "cart_tax": "0.00",
    "total": "39.00",
    "total_tax": "0.00",
    "prices_include_tax": false,
    "customer_id": 26,
    "customer_ip_address": "127.0.0.1",
    "customer_user_agent": "mozilla/5.0 (x11; ubuntu; linux x86_64; rv:52.0) gecko/20100101 firefox/52.0",
    "customer_note": "",
    "billing": {
      "first_name": "João",
      "last_name": "Silva",
      "company": "",
      "address_1": "Av. Brasil, 432",
      "address_2": "",
      "city": "Rio de Janeiro",
      "state": "RJ",
      "postcode": "12345-000",
      "country": "BR",
      "email": "joao.silva@example.com",
      "phone": "(11) 1111-1111"
    },
    "shipping": {
      "first_name": "João",
      "last_name": "Silva",
      "company": "",
      "address_1": "Av. Brasil, 432",
      "address_2": "",
      "city": "Rio de Janeiro",
      "state": "RJ",
      "postcode": "12345-000",
      "country": "BR"
    },
    "payment_method": "bacs",
    "payment_method_title": "Direct bank transfer",
    "transaction_id": "",
    "date_paid": null,
    "date_paid_gmt": null,
    "date_completed": "2017-03-21T16:54:51",
    "date_completed_gmt": "2017-03-21T19:54:51",
    "cart_hash": "5040ce7273261e31d8bcf79f9be3d279",
    "meta_data": [
      {
        "id": 13023,
        "key": "_download_permissions_granted",
        "value": "yes"
      }
    ],
    "line_items": [
      {
        "id": 311,
        "name": "Woo Album #2",
        "product_id": 87,
        "variation_id": 0,
        "quantity": 1,
        "tax_class": "",
        "subtotal": "9.00",
        "subtotal_tax": "0.00",
        "total": "9.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta_data": [],
        "sku": "",
        "price": 9
      },
      {
        "id": 313,
        "name": "Woo Ninja",
        "product_id": 34,
        "variation_id": 0,
        "quantity": 1,
        "tax_class": "",
        "subtotal": "20.00",
        "subtotal_tax": "0.00",
        "total": "20.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta_data": [],
        "sku": "",
        "price": 20
      }
    ],
    "tax_lines": [],
    "shipping_lines": [
      {
        "id": 312,
        "method_title": "Flat rate",
        "method_id": "flat_rate:25",
        "total": "10.00",
        "total_tax": "0.00",
        "taxes": [],
        "meta_data": [
          {
            "id": 2057,
            "key": "Items",
            "value": "Woo Album #2 &times; 1"
          }
        ]
      }
    ],
    "fee_lines": [],
    "coupon_lines": [],
    "refunds": [
      {
        "id": 726,
        "refund": "",
        "total": "-10.00"
      },
      {
        "id": 724,
        "refund": "",
        "total": "-9.00"
      }
    ],
    "_links": {
      "self": [
        {
          "href": "https://example.com/wp-json/wc/v2/orders/723"
        }
      ],
      "collection": [
        {
          "href": "https://example.com/wp-json/wc/v2/orders"
        }
      ],
      "customer": [
        {
          "href": "https://example.com/wp-json/wc/v2/customers/26"
        }
      ]
    }
  }
]
```

#### Available parameters ####

| Parameter        | Type    | Description                                                                                                                                                                     |
| ---------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `context`        | string  | Scope under which the request is made; determines fields present in response. Options: `view` and `edit`. Default is `view`.                                                    |
| `page`           | integer | Current page of the collection. Default is `1`.                                                                                                                                 |
| `per_page`       | integer | Maximum number of items to be returned in result set. Default is `10`.                                                                                                          |
| `search`         | string  | Limit results to those matching a string.                                                                                                                                       |
| `after`          | string  | Limit response to resources published after a given ISO8601 compliant date.                                                                                                     |
| `before`         | string  | Limit response to resources published before a given ISO8601 compliant date.                                                                                                    |
| `dates_are_gmt`  | boolean | Interpret `after` and `before` as UTC dates when `true`.                                                                                                                        |
| `exclude`        | array   | Ensure result set excludes specific IDs.                                                                                                                                        |
| `include`        | array   | Limit result set to specific ids.                                                                                                                                               |
| `offset`         | integer | Offset the result set by a specific number of items.                                                                                                                            |
| `order`          | string  | Order sort attribute ascending or descending. Options: `asc` and `desc`. Default is `desc`.                                                                                     |
| `orderby`        | string  | Sort collection by object attribute. Options: `date`, `id`, `include`, `title` and `slug`. Default is `date`.                                                                   |
| `parent`         | array   | Limit result set to those of particular parent IDs.                                                                                                                             |
| `parent_exclude` | array   | Limit result set to all items except those of a particular parent ID.                                                                                                           |
| `status`         | string  | Limit result set to orders assigned a specific status. Options: `any`, `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded` and `failed`. Default is `any`. |
| `customer`       | integer | Limit result set to orders assigned a specific customer.                                                                                                                        |
| `product`        | integer | Limit result set to orders assigned a specific product.                                                                                                                         |
| `dp`             | integer | Number of decimal points to use in each resource. Default is `2`.                                                                                                               |

## Update an Order ##

This API lets you make changes to an order.

### HTTP Request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-put">PUT</i>
		<h6>/wp-json/wc/v2/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X PUT https://example.com/wp-json/wc/v2/orders/727 \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "status": "completed"
}'
```

```javascript
const data = {
  status: "completed"
};

WooCommerce.put("orders/727", data)
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
    'status' => 'completed'
];

print_r($woocommerce->put('orders/727', $data));
?>
```

```python
data = {
    "status": "completed"
}

print(wcapi.put("orders/727", data).json())
```

```ruby
data = {
  status: "completed"
}

woocommerce.put("orders/727", data).parsed_response
```

> JSON response example:

```json
{
  "id": 727,
  "parent_id": 0,
  "number": "727",
  "order_key": "wc_order_58d2d042d1d",
  "created_via": "rest-api",
  "version": "3.0.0",
  "status": "completed",
  "currency": "USD",
  "date_created": "2017-03-22T16:28:02",
  "date_created_gmt": "2017-03-22T19:28:02",
  "date_modified": "2017-03-22T16:30:35",
  "date_modified_gmt": "2017-03-22T19:30:35",
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.35",
  "total": "29.35",
  "total_tax": "1.35",
  "prices_include_tax": false,
  "customer_id": 0,
  "customer_ip_address": "",
  "customer_user_agent": "",
  "customer_note": "",
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "transaction_id": "",
  "date_paid": "2017-03-22T16:28:08",
  "date_paid_gmt": "2017-03-22T19:28:08",
  "date_completed": "2017-03-22T16:30:35",
  "date_completed_gmt": "2017-03-22T19:30:35",
  "cart_hash": "",
  "meta_data": [
    {
      "id": 13106,
      "key": "_download_permissions_granted",
      "value": "yes"
    },
    {
      "id": 13109,
      "key": "_order_stock_reduced",
      "value": "yes"
    }
  ],
  "line_items": [
    {
      "id": 315,
      "name": "Woo Single #1",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": "0.45",
          "subtotal": "0.45"
        }
      ],
      "meta_data": [],
      "sku": "",
      "price": 3
    },
    {
      "id": 316,
      "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "subtotal": "12.00",
      "subtotal_tax": "0.90",
      "total": "12.00",
      "total_tax": "0.90",
      "taxes": [
        {
          "id": 75,
          "total": "0.9",
          "subtotal": "0.9"
        }
      ],
      "meta_data": [
        {
          "id": 2095,
          "key": "pa_color",
          "value": "black"
        },
        {
          "id": 2096,
          "key": "size",
          "value": "M Test"
        }
      ],
      "sku": "Bar3",
      "price": 12
    }
  ],
  "tax_lines": [
    {
      "id": 318,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": 75,
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.35",
      "shipping_tax_total": "0.00",
      "meta_data": []
    }
  ],
  "shipping_lines": [
    {
      "id": 317,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": [],
      "meta_data": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders/727"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders"
      }
    ]
  }
}
```

## Delete an order ##

This API helps you delete an order.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/wp-json/wc/v2/orders/&lt;id&gt;</h6>
	</div>
</div>

```shell
curl -X DELETE https://example.com/wp-json/wc/v2/orders/727?force=true \
	-u consumer_key:consumer_secret
```

```javascript
WooCommerce.delete("orders/727", {
  force: true
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.log(error.response.data);
  });
```

```php
<?php print_r($woocommerce->delete('orders/727', ['force' => true])); ?>
```

```python
print(wcapi.delete("orders/727", params={"force": True}).json())
```

```ruby
woocommerce.delete("orders/727", force: true).parsed_response
```

> JSON response example:

```json
{
  "id": 727,
  "parent_id": 0,
  "number": "727",
  "order_key": "wc_order_58d2d042d1d",
  "created_via": "rest-api",
  "version": "3.0.0",
  "status": "completed",
  "currency": "USD",
  "date_created": "2017-03-22T16:28:02",
  "date_created_gmt": "2017-03-22T19:28:02",
  "date_modified": "2017-03-22T16:30:35",
  "date_modified_gmt": "2017-03-22T19:30:35",
  "discount_total": "0.00",
  "discount_tax": "0.00",
  "shipping_total": "10.00",
  "shipping_tax": "0.00",
  "cart_tax": "1.35",
  "total": "29.35",
  "total_tax": "1.35",
  "prices_include_tax": false,
  "customer_id": 0,
  "customer_ip_address": "",
  "customer_user_agent": "",
  "customer_note": "",
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "shipping": {
    "first_name": "John",
    "last_name": "Doe",
    "company": "",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US"
  },
  "payment_method": "bacs",
  "payment_method_title": "Direct Bank Transfer",
  "transaction_id": "",
  "date_paid": "2017-03-22T16:28:08",
  "date_paid_gmt": "2017-03-22T19:28:08",
  "date_completed": "2017-03-22T16:30:35",
  "date_completed_gmt": "2017-03-22T19:30:35",
  "cart_hash": "",
  "meta_data": [
    {
      "id": 13106,
      "key": "_download_permissions_granted",
      "value": "yes"
    },
    {
      "id": 13109,
      "key": "_order_stock_reduced",
      "value": "yes"
    }
  ],
  "line_items": [
    {
      "id": 315,
      "name": "Woo Single #1",
      "product_id": 93,
      "variation_id": 0,
      "quantity": 2,
      "tax_class": "",
      "subtotal": "6.00",
      "subtotal_tax": "0.45",
      "total": "6.00",
      "total_tax": "0.45",
      "taxes": [
        {
          "id": 75,
          "total": "0.45",
          "subtotal": "0.45"
        }
      ],
      "meta_data": [],
      "sku": "",
      "price": 3
    },
    {
      "id": 316,
      "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
      "product_id": 22,
      "variation_id": 23,
      "quantity": 1,
      "tax_class": "",
      "subtotal": "12.00",
      "subtotal_tax": "0.90",
      "total": "12.00",
      "total_tax": "0.90",
      "taxes": [
        {
          "id": 75,
          "total": "0.9",
          "subtotal": "0.9"
        }
      ],
      "meta_data": [
        {
          "id": 2095,
          "key": "pa_color",
          "value": "black"
        },
        {
          "id": 2096,
          "key": "size",
          "value": "M Test"
        }
      ],
      "sku": "Bar3",
      "price": 12
    }
  ],
  "tax_lines": [
    {
      "id": 318,
      "rate_code": "US-CA-STATE TAX",
      "rate_id": 75,
      "label": "State Tax",
      "compound": false,
      "tax_total": "1.35",
      "shipping_tax_total": "0.00",
      "meta_data": []
    }
  ],
  "shipping_lines": [
    {
      "id": 317,
      "method_title": "Flat Rate",
      "method_id": "flat_rate",
      "total": "10.00",
      "total_tax": "0.00",
      "taxes": [],
      "meta_data": []
    }
  ],
  "fee_lines": [],
  "coupon_lines": [],
  "refunds": [],
  "_links": {
    "self": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders/727"
      }
    ],
    "collection": [
      {
        "href": "https://example.com/wp-json/wc/v2/orders"
      }
    ]
  }
}
```

#### Available parameters ####

| Parameter |  Type  |                               Description                               |
|-----------|--------|-------------------------------------------------------------------------|
| `force`   | string | Use `true` whether to permanently delete the order, Default is `false`. |

## Batch update orders ##

This API helps you to batch create, update and delete multiple orders.

<aside class="notice">
Note: By default it's limited to up to 100 objects to be created, updated or deleted. 
</aside>

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/wp-json/wc/v2/orders/batch</h6>
	</div>
</div>

```shell
curl -X POST https://example.com/wp-json/wc/v2/orders/batch \
	-u consumer_key:consumer_secret \
	-H "Content-Type: application/json" \
	-d '{
  "create": [
    {
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "line_items": [
        {
          "product_id": 79,
          "quantity": 1
        },
        {
          "product_id": 93,
          "quantity": 1
        },
        {
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1
        }
      ],
      "shipping_lines": [
        {
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "30.00"
        }
      ]
    },
    {
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "set_paid": true,
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "line_items": [
        {
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1
        },
        {
          "product_id": 22,
          "variation_id": 24,
          "quantity": 1
        }
      ],
      "shipping_lines": [
        {
          "method_id": "flat_rate",
          "method_title": "Flat Rate",
          "total": "20.00"
        }
      ]
    }
  ],
  "update": [
    {
      "id": 727,
      "shipping_methods": "Local Delivery"
    }
  ],
  "delete": [
    723
  ]
}'
```

```javascript
const data = {
  create: [
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 79,
          quantity: 1
        },
        {
          product_id: 93,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "30.00"
        }
      ]
    },
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      set_paid: true,
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 24,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "20.00"
        }
      ]
    }
  ],
  update: [
    {
      id: 727,
      shipping_methods: "Local Delivery"
    }
  ],
  delete: [
    723
  ]
};

WooCommerce.post("orders/batch", data)
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
            'payment_method' => 'bacs',
            'payment_method_title' => 'Direct Bank Transfer',
            'billing' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US',
                'email' => 'john.doe@example.com',
                'phone' => '(555) 555-5555'
            ],
            'shipping' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US'
            ],
            'line_items' => [
                [
                    'product_id' => 79,
                    'quantity' => 1
                ],
                [
                    'product_id' => 93,
                    'quantity' => 1
                ],
                [
                    'product_id' => 22,
                    'variation_id' => 23,
                    'quantity' => 1
                ]
            ],
            'shipping_lines' => [
                [
                    'method_id' => 'flat_rate',
                    'method_title' => 'Flat Rate',
                    'total' => '30.00'
                ]
            ]
        ],
        [
            'payment_method' => 'bacs',
            'payment_method_title' => 'Direct Bank Transfer',
            'set_paid' => true,
            'billing' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US',
                'email' => 'john.doe@example.com',
                'phone' => '(555) 555-5555'
            ],
            'shipping' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'address_1' => '969 Market',
                'address_2' => '',
                'city' => 'San Francisco',
                'state' => 'CA',
                'postcode' => '94103',
                'country' => 'US'
            ],
            'line_items' => [
                [
                    'product_id' => 22,
                    'variation_id' => 23,
                    'quantity' => 1
                ],
                [
                    'product_id' => 22,
                    'variation_id' => 24,
                    'quantity' => 1
                ]
            ],
            'shipping_lines' => [
                [
                    'method_id' => 'flat_rate',
                    'method_title' => 'Flat Rate',
                    'total' => '20.00'
                ]
            ]
        ]
    ],
    'update' => [
        [
            'id' => 727,
            'shipping_methods' => 'Local Delivery'
        ]
    ],
    'delete' => [
        723
    ]
];

print_r($woocommerce->post('orders/batch', $data));
?>
```

```python
data = {
    "create": [
        {
            "payment_method": "bacs",
            "payment_method_title": "Direct Bank Transfer",
            "billing": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US",
                "email": "john.doe@example.com",
                "phone": "(555) 555-5555"
            },
            "shipping": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US"
            },
            "line_items": [
                {
                    "product_id": 79,
                    "quantity": 1
                },
                {
                    "product_id": 93,
                    "quantity": 1
                },
                {
                    "product_id": 22,
                    "variation_id": 23,
                    "quantity": 1
                }
            ],
            "shipping_lines": [
                {
                    "method_id": "flat_rate",
                    "method_title": "Flat Rate",
                    "total": "30.00"
                }
            ]
        },
        {
            "payment_method": "bacs",
            "payment_method_title": "Direct Bank Transfer",
            "set_paid": True,
            "billing": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US",
                "email": "john.doe@example.com",
                "phone": "(555) 555-5555"
            },
            "shipping": {
                "first_name": "John",
                "last_name": "Doe",
                "address_1": "969 Market",
                "address_2": "",
                "city": "San Francisco",
                "state": "CA",
                "postcode": "94103",
                "country": "US"
            },
            "line_items": [
                {
                    "product_id": 22,
                    "variation_id": 23,
                    "quantity": 1
                },
                {
                    "product_id": 22,
                    "variation_id": 24,
                    "quantity": 1
                }
            ],
            "shipping_lines": [
                {
                    "method_id": "flat_rate",
                    "method_title": "Flat Rate",
                    "total": "20.00"
                }
            ]
        }
    ],
    "update": [
        {
            "id": 727,
            "shipping_methods": "Local Delivery"
        }
    ],
    "delete": [
        723
    ]
}

print(wcapi.post("orders/batch", data).json())
```

```ruby
data = {
  create: [
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 79,
          quantity: 1
        },
        {
          product_id: 93,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "30.00"
        }
      ]
    },
    {
      payment_method: "bacs",
      payment_method_title: "Direct Bank Transfer",
      set_paid: true,
      billing: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US",
        email: "john.doe@example.com",
        phone: "(555) 555-5555"
      },
      shipping: {
        first_name: "John",
        last_name: "Doe",
        address_1: "969 Market",
        address_2: "",
        city: "San Francisco",
        state: "CA",
        postcode: "94103",
        country: "US"
      },
      line_items: [
        {
          product_id: 22,
          variation_id: 23,
          quantity: 1
        },
        {
          product_id: 22,
          variation_id: 24,
          quantity: 1
        }
      ],
      shipping_lines: [
        {
          method_id: "flat_rate",
          method_title: "Flat Rate",
          total: "20.00"
        }
      ]
    }
  ],
  update: [
    {
      id: 727,
      shipping_methods: "Local Delivery"
    }
  ],
  delete: [
    723
  ]
}

woocommerce.post("orders/batch", data).parsed_response
```

> JSON response example:

```json
{
  "create": [
    {
      "id": 728,
      "parent_id": 0,
      "number": "728",
      "order_key": "wc_order_58d2d18e580",
      "created_via": "rest-api",
      "version": "3.0.0",
      "status": "pending",
      "currency": "USD",
      "date_created": "2017-03-22T16:33:34",
      "date_created_gmt": "2017-03-22T19:33:34",
      "date_modified": "2017-03-22T16:33:34",
      "date_modified_gmt": "2017-03-22T19:33:34",
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "30.00",
      "shipping_tax": "0.00",
      "cart_tax": "2.25",
      "total": "62.25",
      "total_tax": "2.25",
      "prices_include_tax": false,
      "customer_id": 0,
      "customer_ip_address": "",
      "customer_user_agent": "",
      "customer_note": "",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "transaction_id": "",
      "date_paid": null,
      "date_paid_gmt": null,
      "date_completed": null,
      "date_completed_gmt": null,
      "cart_hash": "",
      "meta_data": [],
      "line_items": [
        {
          "id": 319,
          "name": "Woo Logo",
          "product_id": 79,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "15.00",
          "subtotal_tax": "1.13",
          "total": "15.00",
          "total_tax": "1.13",
          "taxes": [
            {
              "id": 75,
              "total": "1.125",
              "subtotal": "1.125"
            }
          ],
          "meta_data": [],
          "sku": "",
          "price": 15
        },
        {
          "id": 320,
          "name": "Woo Single #1",
          "product_id": 93,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "3.00",
          "subtotal_tax": "0.23",
          "total": "3.00",
          "total_tax": "0.23",
          "taxes": [
            {
              "id": 75,
              "total": "0.225",
              "subtotal": "0.225"
            }
          ],
          "meta_data": [],
          "sku": "",
          "price": 3
        },
        {
          "id": 321,
          "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "12.00",
          "subtotal_tax": "0.90",
          "total": "12.00",
          "total_tax": "0.90",
          "taxes": [
            {
              "id": 75,
              "total": "0.9",
              "subtotal": "0.9"
            }
          ],
          "meta_data": [
            {
              "id": 2133,
              "key": "pa_color",
              "value": "black"
            },
            {
              "id": 2134,
              "key": "size",
              "value": "M Test"
            }
          ],
          "sku": "Bar3",
          "price": 12
        }
      ],
      "tax_lines": [
        {
          "id": 323,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": 75,
          "label": "State Tax",
          "compound": false,
          "tax_total": "2.25",
          "shipping_tax_total": "0.00",
          "meta_data": []
        }
      ],
      "shipping_lines": [
        {
          "id": 322,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "30.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders/728"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders"
          }
        ]
      }
    },
    {
      "id": 729,
      "parent_id": 0,
      "number": "729",
      "order_key": "wc_order_58d2d196171",
      "created_via": "rest-api",
      "version": "3.0.0",
      "status": "processing",
      "currency": "USD",
      "date_created": "2017-03-22T16:33:42",
      "date_created_gmt": "2017-03-22T19:33:42",
      "date_modified": "2017-03-22T16:33:47",
      "date_modified_gmt": "2017-03-22T19:33:47",
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "20.00",
      "shipping_tax": "0.00",
      "cart_tax": "2.40",
      "total": "54.40",
      "total_tax": "2.40",
      "prices_include_tax": false,
      "customer_id": 0,
      "customer_ip_address": "",
      "customer_user_agent": "",
      "customer_note": "",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "transaction_id": "",
      "date_paid": "2017-03-22T16:33:47",
      "date_paid_gmt": "2017-03-22T19:33:47",
      "date_completed": null,
      "date_completed_gmt": null,
      "cart_hash": "",
      "meta_data": [
        {
          "id": 13198,
          "key": "_download_permissions_granted",
          "value": "yes"
        }
      ],
      "line_items": [
        {
          "id": 324,
          "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "12.00",
          "subtotal_tax": "0.90",
          "total": "12.00",
          "total_tax": "0.90",
          "taxes": [
            {
              "id": 75,
              "total": "0.9",
              "subtotal": "0.9"
            }
          ],
          "meta_data": [
            {
              "id": 2153,
              "key": "pa_color",
              "value": "black"
            },
            {
              "id": 2154,
              "key": "size",
              "value": "M Test"
            }
          ],
          "sku": "Bar3",
          "price": 12
        },
        {
          "id": 325,
          "name": "Ship Your Idea &ndash; Color: Green, Size: S Test",
          "product_id": 22,
          "variation_id": 24,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "20.00",
          "subtotal_tax": "1.50",
          "total": "20.00",
          "total_tax": "1.50",
          "taxes": [
            {
              "id": 75,
              "total": "1.5",
              "subtotal": "1.5"
            }
          ],
          "meta_data": [
            {
              "id": 2164,
              "key": "pa_color",
              "value": "green"
            },
            {
              "id": 2165,
              "key": "size",
              "value": "S Test"
            }
          ],
          "sku": "",
          "price": 20
        }
      ],
      "tax_lines": [
        {
          "id": 327,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": 75,
          "label": "State Tax",
          "compound": false,
          "tax_total": "2.40",
          "shipping_tax_total": "0.00",
          "meta_data": []
        }
      ],
      "shipping_lines": [
        {
          "id": 326,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "20.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders/729"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders"
          }
        ]
      }
    }
  ],
  "update": [
    {
      "id": 727,
      "parent_id": 0,
      "number": "727",
      "order_key": "wc_order_58d2d042d1d",
      "created_via": "rest-api",
      "version": "3.0.0",
      "status": "completed",
      "currency": "USD",
      "date_created": "2017-03-22T16:28:02",
      "date_created_gmt": "2017-03-22T19:28:02",
      "date_modified": "2017-03-22T16:30:35",
      "date_modified_gmt": "2017-03-22T19:30:35",
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "10.00",
      "shipping_tax": "0.00",
      "cart_tax": "1.35",
      "total": "29.35",
      "total_tax": "1.35",
      "prices_include_tax": false,
      "customer_id": 0,
      "customer_ip_address": "",
      "customer_user_agent": "",
      "customer_note": "",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      },
      "payment_method": "bacs",
      "payment_method_title": "Direct Bank Transfer",
      "transaction_id": "",
      "date_paid": "2017-03-22T16:28:08",
      "date_paid_gmt": "2017-03-22T19:28:08",
      "date_completed": "2017-03-22T16:30:35",
      "date_completed_gmt": "2017-03-22T19:30:35",
      "cart_hash": "",
      "meta_data": [
        {
          "id": 13106,
          "key": "_download_permissions_granted",
          "value": "yes"
        },
        {
          "id": 13109,
          "key": "_order_stock_reduced",
          "value": "yes"
        }
      ],
      "line_items": [
        {
          "id": 315,
          "name": "Woo Single #1",
          "product_id": 93,
          "variation_id": 0,
          "quantity": 2,
          "tax_class": "",
          "subtotal": "6.00",
          "subtotal_tax": "0.45",
          "total": "6.00",
          "total_tax": "0.45",
          "taxes": [
            {
              "id": 75,
              "total": "0.45",
              "subtotal": "0.45"
            }
          ],
          "meta_data": [],
          "sku": "",
          "price": 3
        },
        {
          "id": 316,
          "name": "Ship Your Idea &ndash; Color: Black, Size: M Test",
          "product_id": 22,
          "variation_id": 23,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "12.00",
          "subtotal_tax": "0.90",
          "total": "12.00",
          "total_tax": "0.90",
          "taxes": [
            {
              "id": 75,
              "total": "0.9",
              "subtotal": "0.9"
            }
          ],
          "meta_data": [
            {
              "id": 2095,
              "key": "pa_color",
              "value": "black"
            },
            {
              "id": 2096,
              "key": "size",
              "value": "M Test"
            }
          ],
          "sku": "Bar3",
          "price": 12
        }
      ],
      "tax_lines": [
        {
          "id": 318,
          "rate_code": "US-CA-STATE TAX",
          "rate_id": 75,
          "label": "State Tax",
          "compound": false,
          "tax_total": "1.35",
          "shipping_tax_total": "0.00",
          "meta_data": []
        }
      ],
      "shipping_lines": [
        {
          "id": 317,
          "method_title": "Flat Rate",
          "method_id": "flat_rate",
          "total": "10.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": []
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders/727"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders"
          }
        ]
      }
    }
  ],
  "delete": [
    {
      "id": 723,
      "parent_id": 0,
      "number": "723",
      "order_key": "wc_order_58d17c18352",
      "created_via": "checkout",
      "version": "3.0.0",
      "status": "completed",
      "currency": "USD",
      "date_created": "2017-03-21T16:16:00",
      "date_created_gmt": "2017-03-21T19:16:00",
      "date_modified": "2017-03-21T16:54:51",
      "date_modified_gmt": "2017-03-21T19:54:51",
      "discount_total": "0.00",
      "discount_tax": "0.00",
      "shipping_total": "10.00",
      "shipping_tax": "0.00",
      "cart_tax": "0.00",
      "total": "39.00",
      "total_tax": "0.00",
      "prices_include_tax": false,
      "customer_id": 26,
      "customer_ip_address": "127.0.0.1",
      "customer_user_agent": "mozilla/5.0 (x11; ubuntu; linux x86_64; rv:52.0) gecko/20100101 firefox/52.0",
      "customer_note": "",
      "billing": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR",
        "email": "joao.silva@example.com",
        "phone": "(11) 1111-1111"
      },
      "shipping": {
        "first_name": "João",
        "last_name": "Silva",
        "company": "",
        "address_1": "Av. Brasil, 432",
        "address_2": "",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "postcode": "12345-000",
        "country": "BR"
      },
      "payment_method": "bacs",
      "payment_method_title": "Direct bank transfer",
      "transaction_id": "",
      "date_paid": null,
      "date_paid_gmt": null,
      "date_completed": "2017-03-21T16:54:51",
      "date_completed_gmt": "2017-03-21T19:54:51",
      "cart_hash": "5040ce7273261e31d8bcf79f9be3d279",
      "meta_data": [
        {
          "id": 13023,
          "key": "_download_permissions_granted",
          "value": "yes"
        }
      ],
      "line_items": [
        {
          "id": 311,
          "name": "Woo Album #2",
          "product_id": 87,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "9.00",
          "subtotal_tax": "0.00",
          "total": "9.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": [],
          "sku": "",
          "price": 9
        },
        {
          "id": 313,
          "name": "Woo Ninja",
          "product_id": 34,
          "variation_id": 0,
          "quantity": 1,
          "tax_class": "",
          "subtotal": "20.00",
          "subtotal_tax": "0.00",
          "total": "20.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": [],
          "sku": "",
          "price": 20
        }
      ],
      "tax_lines": [],
      "shipping_lines": [
        {
          "id": 312,
          "method_title": "Flat rate",
          "method_id": "flat_rate:25",
          "total": "10.00",
          "total_tax": "0.00",
          "taxes": [],
          "meta_data": [
            {
              "id": 2057,
              "key": "Items",
              "value": "Woo Album #2 &times; 1"
            }
          ]
        }
      ],
      "fee_lines": [],
      "coupon_lines": [],
      "refunds": [
        {
          "id": 726,
          "refund": "",
          "total": "-10.00"
        },
        {
          "id": 724,
          "refund": "",
          "total": "-9.00"
        }
      ],
      "_links": {
        "self": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders/723"
          }
        ],
        "collection": [
          {
            "href": "https://example.com/wp-json/wc/v2/orders"
          }
        ],
        "customer": [
          {
            "href": "https://example.com/wp-json/wc/v2/customers/26"
          }
        ]
      }
    }
  ]
}
```
