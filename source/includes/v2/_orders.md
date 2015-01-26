# Orders #

This section lists all API that can be used to create, edit or otherwise manipulate orders.

@TODO

<aside class="warning">
Documentation under construction.
</aside>

## Orders Properties ##

|          Attribute          |   Type  |                                                               Description                                                                |
| --------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                        | integer | Order ID (post ID) <i class="label label-info">read-only</i>                                                                             |
| `order_number`              | integer | Order number                                                                                                                             |
| `created_at`                | string  | UTC DateTime when the order was created <i class="label label-info">read-only</i>                                                        |
| `updated_at`                | string  | UTC DateTime when the order was last updated <i class="label label-info">read-only</i>                                                   |
| `completed_at`              | string  | UTC DateTime when the order was last completed <i class="label label-info">read-only</i>                                                 |
| `status`                    | string  | Order status. By default are available the status: `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded` and `failed` |
| `currency`                  | string  | Currency in ISO format, e.g `USD`                                                                                                        |
| `total`                     | float   | Order total <i class="label label-info">read-only</i>                                                                                    |
| `subtotal`                  | float   | Order subtotal <i class="label label-info">read-only</i>                                                                                 |
| `total_line_items_quantity` | integer | Total of order items <i class="label label-info">read-only</i>                                                                           |
| `total_tax`                 | float   | Order tax total <i class="label label-info">read-only</i>                                                                                |
| `total_shipping`            | float   | Order shipping total <i class="label label-info">read-only</i>                                                                           |
| `cart_tax`                  | float   | Order cart tax <i class="label label-info">read-only</i>                                                                                 |
| `shipping_tax`              | float   | Order shipping tax <i class="label label-info">read-only</i>                                                                             |
| `total_discount`            | float   | Order total discount <i class="label label-info">read-only</i>                                                                           |
| `shipping_methods`          | string  | Text list of the shipping methods used in the order <i class="label label-info">read-only</i>                                            |
| `payment_details`           | array   | List of payment details. See [Payment Details Properties](#payment-details-properties)                                                   |
| `billing_address`           | array   | List of customer billing address. See [Customer Billing Address Properties](#billing-address-properties)                                 |
| `shipping_address`          | array   | List of customer shipping address. See [Customer Shipping Address Properties](#shipping-address-properties)                              |
| `note`                      | string  | Customer order notes                                                                                                                     |
| `customer_ip`               | string  | Customer IP address <i class="label label-info">read-only</i>                                                                            |
| `customer_user_agent`       | string  | Customer User-Agent <i class="label label-info">read-only</i>                                                                            |
| `customer_id`               | integer | Customer ID (user ID)                                                                                                                    |
| `view_order_url`            | string  | URL to view the order in frontend <i class="label label-info">read-only</i>                                                              |
| `line_items`                | array   | List of order line items. See [Line Items Properties](#line-items-properties)                                                            |
| `shipping_lines`            | array   | List of shipping line items. See [Shipping Lines Properties](#shipping-lines-properties)                                                 |
| `tax_lines`                 | array   | List of tax line items. See [Tax Lines Properties](#tax-lines-properties) <i class="label label-info">read-only</i>                      |
| `fee_lines`                 | array   | List of fee line items. See [Fee Lines Properites](#fee-lines-properites)                                                                |
| `coupon_lines`              | array   | List of cupon line items. See [Coupon Lines Properties](#coupon-lines-properties)                                                        |
| `customer`                  | array   | Customer data. See [Customer Properties](#customers-properties)                                                                          |

### Payment Details Properties ###

|    Attribute     |   Type  |                                                               Description                                                                |
| ---------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `method_id`      | string  | Payment method ID <i class="label label-info">required</i>                                                                               |
| `method_title`   | string  | Payment method title <i class="label label-info">required</i>                                                                            |
| `paid`           | boolean | Shows/define if the order is paid using this payment method. Use `true` to complate the payment                                          |
| `transaction_id` | string  | Transaction ID, an optional field to set the transacion ID when complate one payment (to set this you need set the `paid` as `true` too) |

### Line Items Properties ###

|   Attribute    |   Type  |                                                                                          Description                                                                                           |
| -------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`           | integer | Line item ID <i class="label label-info">read-only</i>                                                                                                                                         |
| `subtotal`     | float   | Line item subtotal                                                                                                                                                                             |
| `subtotal_tax` | float   | Line item tax subtotal                                                                                                                                                                         |
| `total`        | float   | Line item total                                                                                                                                                                                |
| `total_tax`    | float   | Line item tax total                                                                                                                                                                            |
| `price`        | float   | Product price <i class="label label-info">read-only</i>                                                                                                                                        |
| `quantity`     | integer | Quantity                                                                                                                                                                                       |
| `tax_class`    | string  | Product tax class <i class="label label-info">read-only</i>                                                                                                                                    |
| `name`         | string  | Product name <i class="label label-info">read-only</i>                                                                                                                                         |
| `product_id`   | integer | Product ID <i class="label label-info">required</i>                                                                                                                                           |
| `sku`          | string  | Product SKU <i class="label label-info">read-only</i>                                                                                                                                          |
| `meta`         | array   | List of product meta items. See [Products Meta Items Properties](#products-meta-items-properties)                                                                                              |
| `variation`    | array   | List of product variation attributes. e.g: `"variation": [{"color": "Black"}, {"size": "XGG"}]` <i class="label label-info">write-only</i> |

#### Products Meta Items Properties ####

| Attribute |  Type  |   Description   |
| --------- | ------ | --------------- |
| `key`     | string | Meta item key   |
| `label`   | string | Meta item label |
| `value`   | string | Meta item value |

### Shipping Lines Properties ###

|   Attribute    |   Type  |                          Description                           |
| -------------- | ------- | -------------------------------------------------------------- |
| `id`           | integer | Shipping line ID <i class="label label-info">read-only</i>     |
| `method_id`    | string  | Shipping method ID <i class="label label-info">required</i>    |
| `method_title` | string  | Shipping method title <i class="label label-info">required</i> |
| `total`        | float   | Total amount                                                   |

### Tax Lines Properties ###

| Attribute  |   Type  |                                                               Description                                                               |
| ---------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `id`       | integer | Tax rate line ID <i class="label label-info">read-only</i>                                                                              |
| `rate_id`  | integer | Tax rate ID <i class="label label-info">read-only</i>                                                                                   |
| `code`     | string  | Tax rate code <i class="label label-info">read-only</i>                                                                                 |
| `title`    | string  | Tax rate title/name <i class="label label-info">read-only</i>                                                                           |
| `total`    | float   | Tax rate total <i class="label label-info">read-only</i>                                                                                |
| `compound` | boolean | Shows if is or not a compound rate. Compound tax rates are applied on top of other tax rates. <i class="label label-info">read-only</i> |

### Fee Lines Properites ###

|  Attribute  |   Type  |                                  Description                                  |
| ----------- | ------- | ----------------------------------------------------------------------------- |
| `id`        | integer | Fee line ID <i class="label label-info">read-only</i>                         |
| `title`     | string  | Shipping method title <i class="label label-info">required</i>                |
| `taxable`   | boolean | Shows/define if the fee is taxable <i class="label label-info">write-only</i> |
| `tax_class` | string  | Tax class, requered in write-mode if the fee is taxable                       |
| `total`     | float   | Total amount                                                                  |
| `total_tax` | float   | Tax total                                                                     |

### Coupon Lines Properties ###

| Attribute |   Type  |                       Description                        |
| --------- | ------- | -------------------------------------------------------- |
| `id`      | integer | Coupon line ID <i class="label label-info">read-only</i> |
| `code`    | string  | Coupon code <i class="label label-info">required</i>     |
| `amount`  | float   | Total amount <i class="label label-info">required</i>    |
