# Index #

By default, the API provides information about all available endpoints on the site. Authentication is not required to access the API index.

### HTTP request ###

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/wp-json/wc/v1</h6>
	</div>
</div>

```shell
curl https://example.com/wp-json/wc/v1
```

```javascript
WooCommerce.get('', function(err, data, res) {
  console.log(res);
});
```

```php
<?php print_r($woocommerce->get('')); ?>
```

```python
print(wcapi.get("").json())
```

```ruby
woocommerce.get("").parsed_response
```

> JSON response example:

```json
{
  "namespace": "wc/v1",
  "routes": {
    "/wc/v1": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "namespace": {
              "required": false,
              "default": "wc/v1"
            },
            "context": {
              "required": false,
              "default": "view"
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1"
      }
    },
    "/wc/v1/coupons": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "after": {
              "required": false,
              "description": "Limit response to resources published after a given ISO8601 compliant date."
            },
            "before": {
              "required": false,
              "description": "Limit response to resources published before a given ISO8601 compliant date."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "desc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "date",
              "enum": [
                "date",
                "id",
                "include",
                "title",
                "slug"
              ],
              "description": "Sort collection by object attribute."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to posts with a specific slug."
            },
            "filter": {
              "required": false,
              "description": "Use WP Query arguments to modify the response; private query vars require appropriate authorization."
            },
            "code": {
              "required": false,
              "description": "Limit result set to resources with a specific code."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "code": {
              "required": true
            },
            "description": {
              "required": false,
              "description": "Coupon description."
            },
            "discount_type": {
              "required": false,
              "default": "fixed_cart",
              "enum": [
                "fixed_cart",
                "percent",
                "fixed_product",
                "percent_product"
              ],
              "description": "Determines the type of discount that will be applied."
            },
            "amount": {
              "required": false,
              "description": "The amount of discount."
            },
            "expiry_date": {
              "required": false,
              "description": "UTC DateTime when the coupon expires."
            },
            "individual_use": {
              "required": false,
              "default": false,
              "description": "Whether coupon can only be used individually."
            },
            "product_ids": {
              "required": false,
              "description": "List of product ID's the coupon can be used on."
            },
            "exclude_product_ids": {
              "required": false,
              "description": "List of product ID's the coupon cannot be used on."
            },
            "usage_limit": {
              "required": false,
              "description": "How many times the coupon can be used."
            },
            "usage_limit_per_user": {
              "required": false,
              "description": "How many times the coupon can be used per customer."
            },
            "limit_usage_to_x_items": {
              "required": false,
              "description": "Max number of items in the cart the coupon can be applied to."
            },
            "free_shipping": {
              "required": false,
              "default": false,
              "description": "Define if can be applied for free shipping."
            },
            "product_categories": {
              "required": false,
              "description": "List of category ID's the coupon applies to."
            },
            "excluded_product_categories": {
              "required": false,
              "description": "List of category ID's the coupon does not apply to."
            },
            "exclude_sale_items": {
              "required": false,
              "default": false,
              "description": "Define if should not apply when have sale items."
            },
            "minimum_amount": {
              "required": false,
              "description": "Minimum order amount that needs to be in the cart before coupon applies."
            },
            "maximum_amount": {
              "required": false,
              "description": "Maximum order amount allowed when using the coupon."
            },
            "email_restrictions": {
              "required": false,
              "description": "List of email addresses that can use this coupon."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/coupons"
      }
    },
    "/wc/v1/coupons/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "code": {
              "required": false,
              "description": "Coupon code."
            },
            "description": {
              "required": false,
              "description": "Coupon description."
            },
            "discount_type": {
              "required": false,
              "enum": [
                "fixed_cart",
                "percent",
                "fixed_product",
                "percent_product"
              ],
              "description": "Determines the type of discount that will be applied."
            },
            "amount": {
              "required": false,
              "description": "The amount of discount."
            },
            "expiry_date": {
              "required": false,
              "description": "UTC DateTime when the coupon expires."
            },
            "individual_use": {
              "required": false,
              "description": "Whether coupon can only be used individually."
            },
            "product_ids": {
              "required": false,
              "description": "List of product ID's the coupon can be used on."
            },
            "exclude_product_ids": {
              "required": false,
              "description": "List of product ID's the coupon cannot be used on."
            },
            "usage_limit": {
              "required": false,
              "description": "How many times the coupon can be used."
            },
            "usage_limit_per_user": {
              "required": false,
              "description": "How many times the coupon can be used per customer."
            },
            "limit_usage_to_x_items": {
              "required": false,
              "description": "Max number of items in the cart the coupon can be applied to."
            },
            "free_shipping": {
              "required": false,
              "description": "Define if can be applied for free shipping."
            },
            "product_categories": {
              "required": false,
              "description": "List of category ID's the coupon applies to."
            },
            "excluded_product_categories": {
              "required": false,
              "description": "List of category ID's the coupon does not apply to."
            },
            "exclude_sale_items": {
              "required": false,
              "description": "Define if should not apply when have sale items."
            },
            "minimum_amount": {
              "required": false,
              "description": "Minimum order amount that needs to be in the cart before coupon applies."
            },
            "maximum_amount": {
              "required": false,
              "description": "Maximum order amount allowed when using the coupon."
            },
            "email_restrictions": {
              "required": false,
              "description": "List of email addresses that can use this coupon."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Whether to bypass trash and force deletion."
            }
          }
        }
      ]
    },
    "/wc/v1/coupons/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "code": {
              "required": false,
              "description": "Coupon code."
            },
            "description": {
              "required": false,
              "description": "Coupon description."
            },
            "discount_type": {
              "required": false,
              "enum": [
                "fixed_cart",
                "percent",
                "fixed_product",
                "percent_product"
              ],
              "description": "Determines the type of discount that will be applied."
            },
            "amount": {
              "required": false,
              "description": "The amount of discount."
            },
            "expiry_date": {
              "required": false,
              "description": "UTC DateTime when the coupon expires."
            },
            "individual_use": {
              "required": false,
              "description": "Whether coupon can only be used individually."
            },
            "product_ids": {
              "required": false,
              "description": "List of product ID's the coupon can be used on."
            },
            "exclude_product_ids": {
              "required": false,
              "description": "List of product ID's the coupon cannot be used on."
            },
            "usage_limit": {
              "required": false,
              "description": "How many times the coupon can be used."
            },
            "usage_limit_per_user": {
              "required": false,
              "description": "How many times the coupon can be used per customer."
            },
            "limit_usage_to_x_items": {
              "required": false,
              "description": "Max number of items in the cart the coupon can be applied to."
            },
            "free_shipping": {
              "required": false,
              "description": "Define if can be applied for free shipping."
            },
            "product_categories": {
              "required": false,
              "description": "List of category ID's the coupon applies to."
            },
            "excluded_product_categories": {
              "required": false,
              "description": "List of category ID's the coupon does not apply to."
            },
            "exclude_sale_items": {
              "required": false,
              "description": "Define if should not apply when have sale items."
            },
            "minimum_amount": {
              "required": false,
              "description": "Minimum order amount that needs to be in the cart before coupon applies."
            },
            "maximum_amount": {
              "required": false,
              "description": "Maximum order amount allowed when using the coupon."
            },
            "email_restrictions": {
              "required": false,
              "description": "List of email addresses that can use this coupon."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/coupons/batch"
      }
    },
    "/wc/v1/customers/(?P<customer_id>[\\d]+)/downloads": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ]
    },
    "/wc/v1/customers": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "name",
              "enum": [
                "id",
                "include",
                "name",
                "registered_date"
              ],
              "description": "Sort collection by object attribute."
            },
            "email": {
              "required": false,
              "description": "Limit result set to resources with a specific email."
            },
            "role": {
              "required": false,
              "default": "customer",
              "enum": [
                "all",
                "administrator",
                "editor",
                "author",
                "contributor",
                "subscriber",
                "customer",
                "shop_manager"
              ],
              "description": "Limit result set to resources with a specific role."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "email": {
              "required": true
            },
            "first_name": {
              "required": false,
              "description": "Customer first name."
            },
            "last_name": {
              "required": false,
              "description": "Customer last name."
            },
            "username": {
              "required": false
            },
            "password": {
              "required": true
            },
            "billing_address": {
              "required": false,
              "description": "List of billing address data."
            },
            "shipping_address": {
              "required": false,
              "description": "List of shipping address data."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/customers"
      }
    },
    "/wc/v1/customers/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "email": {
              "required": false,
              "description": "The email address for the customer."
            },
            "first_name": {
              "required": false,
              "description": "Customer first name."
            },
            "last_name": {
              "required": false,
              "description": "Customer last name."
            },
            "username": {
              "required": false,
              "description": "Customer login name."
            },
            "password": {
              "required": false,
              "description": "Customer password."
            },
            "billing_address": {
              "required": false,
              "description": "List of billing address data."
            },
            "shipping_address": {
              "required": false,
              "description": "List of shipping address data."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            },
            "reassign": {
              "required": false
            }
          }
        }
      ]
    },
    "/wc/v1/customers/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "email": {
              "required": false,
              "description": "The email address for the customer."
            },
            "first_name": {
              "required": false,
              "description": "Customer first name."
            },
            "last_name": {
              "required": false,
              "description": "Customer last name."
            },
            "username": {
              "required": false,
              "description": "Customer login name."
            },
            "password": {
              "required": false,
              "description": "Customer password."
            },
            "billing_address": {
              "required": false,
              "description": "List of billing address data."
            },
            "shipping_address": {
              "required": false,
              "description": "List of shipping address data."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/customers/batch"
      }
    },
    "/wc/v1/orders/(?P<order_id>[\\d]+)/notes": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "note": {
              "required": true
            },
            "customer_note": {
              "required": false,
              "default": false,
              "description": "Shows/define if the note is only for reference or for the customer (the user will be notified)."
            }
          }
        }
      ]
    },
    "/wc/v1/orders/(?P<order_id>[\\d]+)/notes/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/orders/(?P<order_id>[\\d]+)/refunds": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "after": {
              "required": false,
              "description": "Limit response to resources published after a given ISO8601 compliant date."
            },
            "before": {
              "required": false,
              "description": "Limit response to resources published before a given ISO8601 compliant date."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "desc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "date",
              "enum": [
                "date",
                "id",
                "include",
                "title",
                "slug"
              ],
              "description": "Sort collection by object attribute."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to posts with a specific slug."
            },
            "filter": {
              "required": false,
              "description": "Use WP Query arguments to modify the response; private query vars require appropriate authorization."
            },
            "dp": {
              "required": false,
              "default": 2,
              "description": "Number of decimal points to use in each resource."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "amount": {
              "required": false,
              "description": "Refund amount."
            },
            "reason": {
              "required": false,
              "description": "Reason for refund"
            },
            "line_items": {
              "required": false,
              "description": "Line items data."
            },
            "email": {
              "required": true
            }
          }
        }
      ]
    },
    "/wc/v1/orders/(?P<order_id>[\\d]+)/refunds/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            },
            "reassign": {
              "required": false
            }
          }
        }
      ]
    },
    "/wc/v1/orders": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "after": {
              "required": false,
              "description": "Limit response to resources published after a given ISO8601 compliant date."
            },
            "before": {
              "required": false,
              "description": "Limit response to resources published before a given ISO8601 compliant date."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "desc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "date",
              "enum": [
                "date",
                "id",
                "include",
                "title",
                "slug"
              ],
              "description": "Sort collection by object attribute."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to posts with a specific slug."
            },
            "filter": {
              "required": false,
              "description": "Use WP Query arguments to modify the response; private query vars require appropriate authorization."
            },
            "status": {
              "required": false,
              "default": "any",
              "enum": [
                "any",
                "pending",
                "processing",
                "on-hold",
                "completed",
                "cancelled",
                "refunded",
                "failed"
              ],
              "description": "Limit result set to orders assigned a specific status."
            },
            "customer": {
              "required": false,
              "description": "Limit result set to orders assigned a specific customer."
            },
            "product": {
              "required": false,
              "description": "Limit result set to orders assigned a specific product."
            },
            "dp": {
              "required": false,
              "default": 2,
              "description": "Number of decimal points to use in each resource."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "parent_id": {
              "required": false,
              "description": "Parent order ID."
            },
            "status": {
              "required": false,
              "default": "pending",
              "enum": [
                "pending",
                "processing",
                "on-hold",
                "completed",
                "cancelled",
                "refunded",
                "failed"
              ],
              "description": "Order status."
            },
            "currency": {
              "required": false,
              "default": "BRL",
              "enum": [
                "AED",
                "AFN",
                "ALL",
                "AMD",
                "ANG",
                "AOA",
                "ARS",
                "AUD",
                "AWG",
                "AZN",
                "BAM",
                "BBD",
                "BDT",
                "BGN",
                "BHD",
                "BIF",
                "BMD",
                "BND",
                "BOB",
                "BRL",
                "BSD",
                "BTC",
                "BTN",
                "BWP",
                "BYR",
                "BZD",
                "CAD",
                "CDF",
                "CHF",
                "CLP",
                "CNY",
                "COP",
                "CRC",
                "CUC",
                "CUP",
                "CVE",
                "CZK",
                "DJF",
                "DKK",
                "DOP",
                "DZD",
                "EGP",
                "ERN",
                "ETB",
                "EUR",
                "FJD",
                "FKP",
                "GBP",
                "GEL",
                "GGP",
                "GHS",
                "GIP",
                "GMD",
                "GNF",
                "GTQ",
                "GYD",
                "HKD",
                "HNL",
                "HRK",
                "HTG",
                "HUF",
                "IDR",
                "ILS",
                "IMP",
                "INR",
                "IQD",
                "IRR",
                "ISK",
                "JEP",
                "JMD",
                "JOD",
                "JPY",
                "KES",
                "KGS",
                "KHR",
                "KMF",
                "KPW",
                "KRW",
                "KWD",
                "KYD",
                "KZT",
                "LAK",
                "LBP",
                "LKR",
                "LRD",
                "LSL",
                "LYD",
                "MAD",
                "MDL",
                "MGA",
                "MKD",
                "MMK",
                "MNT",
                "MOP",
                "MRO",
                "MUR",
                "MVR",
                "MWK",
                "MXN",
                "MYR",
                "MZN",
                "NAD",
                "NGN",
                "NIO",
                "NOK",
                "NPR",
                "NZD",
                "OMR",
                "PAB",
                "PEN",
                "PGK",
                "PHP",
                "PKR",
                "PLN",
                "PRB",
                "PYG",
                "QAR",
                "RON",
                "RSD",
                "RUB",
                "RWF",
                "SAR",
                "SBD",
                "SCR",
                "SDG",
                "SEK",
                "SGD",
                "SHP",
                "SLL",
                "SOS",
                "SRD",
                "SSP",
                "STD",
                "SYP",
                "SZL",
                "THB",
                "TJS",
                "TMT",
                "TND",
                "TOP",
                "TRY",
                "TTD",
                "TWD",
                "TZS",
                "UAH",
                "UGX",
                "USD",
                "UYU",
                "UZS",
                "VEF",
                "VND",
                "VUV",
                "WST",
                "XAF",
                "XCD",
                "XOF",
                "XPF",
                "YER",
                "ZAR",
                "ZMW"
              ],
              "description": "Currency the order was created with, in ISO format."
            },
            "customer_id": {
              "required": false,
              "default": 0,
              "description": "User ID who owns the order. 0 for guests."
            },
            "billing": {
              "required": false,
              "description": "Billing address."
            },
            "shipping": {
              "required": false,
              "description": "Shipping address."
            },
            "payment_method": {
              "required": false,
              "description": "Payment method ID."
            },
            "payment_method_title": {
              "required": false,
              "description": "Payment method title."
            },
            "set_paid": {
              "required": false,
              "default": false,
              "description": "Define if the order is paid. It will set the status to processing and reduce stock items."
            },
            "transaction_id": {
              "required": false,
              "description": "Unique transaction ID."
            },
            "customer_note": {
              "required": false,
              "description": "Note left by customer during checkout."
            },
            "line_items": {
              "required": false,
              "description": "Line items data."
            },
            "shipping_lines": {
              "required": false,
              "description": "Shipping lines data."
            },
            "fee_lines": {
              "required": false,
              "description": "Fee lines data."
            },
            "coupon_lines": {
              "required": false,
              "description": "Coupons line data."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/orders"
      }
    },
    "/wc/v1/orders/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "parent_id": {
              "required": false,
              "description": "Parent order ID."
            },
            "status": {
              "required": false,
              "enum": [
                "pending",
                "processing",
                "on-hold",
                "completed",
                "cancelled",
                "refunded",
                "failed"
              ],
              "description": "Order status."
            },
            "currency": {
              "required": false,
              "enum": [
                "AED",
                "AFN",
                "ALL",
                "AMD",
                "ANG",
                "AOA",
                "ARS",
                "AUD",
                "AWG",
                "AZN",
                "BAM",
                "BBD",
                "BDT",
                "BGN",
                "BHD",
                "BIF",
                "BMD",
                "BND",
                "BOB",
                "BRL",
                "BSD",
                "BTC",
                "BTN",
                "BWP",
                "BYR",
                "BZD",
                "CAD",
                "CDF",
                "CHF",
                "CLP",
                "CNY",
                "COP",
                "CRC",
                "CUC",
                "CUP",
                "CVE",
                "CZK",
                "DJF",
                "DKK",
                "DOP",
                "DZD",
                "EGP",
                "ERN",
                "ETB",
                "EUR",
                "FJD",
                "FKP",
                "GBP",
                "GEL",
                "GGP",
                "GHS",
                "GIP",
                "GMD",
                "GNF",
                "GTQ",
                "GYD",
                "HKD",
                "HNL",
                "HRK",
                "HTG",
                "HUF",
                "IDR",
                "ILS",
                "IMP",
                "INR",
                "IQD",
                "IRR",
                "ISK",
                "JEP",
                "JMD",
                "JOD",
                "JPY",
                "KES",
                "KGS",
                "KHR",
                "KMF",
                "KPW",
                "KRW",
                "KWD",
                "KYD",
                "KZT",
                "LAK",
                "LBP",
                "LKR",
                "LRD",
                "LSL",
                "LYD",
                "MAD",
                "MDL",
                "MGA",
                "MKD",
                "MMK",
                "MNT",
                "MOP",
                "MRO",
                "MUR",
                "MVR",
                "MWK",
                "MXN",
                "MYR",
                "MZN",
                "NAD",
                "NGN",
                "NIO",
                "NOK",
                "NPR",
                "NZD",
                "OMR",
                "PAB",
                "PEN",
                "PGK",
                "PHP",
                "PKR",
                "PLN",
                "PRB",
                "PYG",
                "QAR",
                "RON",
                "RSD",
                "RUB",
                "RWF",
                "SAR",
                "SBD",
                "SCR",
                "SDG",
                "SEK",
                "SGD",
                "SHP",
                "SLL",
                "SOS",
                "SRD",
                "SSP",
                "STD",
                "SYP",
                "SZL",
                "THB",
                "TJS",
                "TMT",
                "TND",
                "TOP",
                "TRY",
                "TTD",
                "TWD",
                "TZS",
                "UAH",
                "UGX",
                "USD",
                "UYU",
                "UZS",
                "VEF",
                "VND",
                "VUV",
                "WST",
                "XAF",
                "XCD",
                "XOF",
                "XPF",
                "YER",
                "ZAR",
                "ZMW"
              ],
              "description": "Currency the order was created with, in ISO format."
            },
            "customer_id": {
              "required": false,
              "description": "User ID who owns the order. 0 for guests."
            },
            "billing": {
              "required": false,
              "description": "Billing address."
            },
            "shipping": {
              "required": false,
              "description": "Shipping address."
            },
            "payment_method": {
              "required": false,
              "description": "Payment method ID."
            },
            "payment_method_title": {
              "required": false,
              "description": "Payment method title."
            },
            "set_paid": {
              "required": false,
              "description": "Define if the order is paid. It will set the status to processing and reduce stock items."
            },
            "transaction_id": {
              "required": false,
              "description": "Unique transaction ID."
            },
            "customer_note": {
              "required": false,
              "description": "Note left by customer during checkout."
            },
            "line_items": {
              "required": false,
              "description": "Line items data."
            },
            "shipping_lines": {
              "required": false,
              "description": "Shipping lines data."
            },
            "fee_lines": {
              "required": false,
              "description": "Fee lines data."
            },
            "coupon_lines": {
              "required": false,
              "description": "Coupons line data."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Whether to bypass trash and force deletion."
            },
            "reassign": {
              "required": false
            }
          }
        }
      ]
    },
    "/wc/v1/orders/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "parent_id": {
              "required": false,
              "description": "Parent order ID."
            },
            "status": {
              "required": false,
              "enum": [
                "pending",
                "processing",
                "on-hold",
                "completed",
                "cancelled",
                "refunded",
                "failed"
              ],
              "description": "Order status."
            },
            "currency": {
              "required": false,
              "enum": [
                "AED",
                "AFN",
                "ALL",
                "AMD",
                "ANG",
                "AOA",
                "ARS",
                "AUD",
                "AWG",
                "AZN",
                "BAM",
                "BBD",
                "BDT",
                "BGN",
                "BHD",
                "BIF",
                "BMD",
                "BND",
                "BOB",
                "BRL",
                "BSD",
                "BTC",
                "BTN",
                "BWP",
                "BYR",
                "BZD",
                "CAD",
                "CDF",
                "CHF",
                "CLP",
                "CNY",
                "COP",
                "CRC",
                "CUC",
                "CUP",
                "CVE",
                "CZK",
                "DJF",
                "DKK",
                "DOP",
                "DZD",
                "EGP",
                "ERN",
                "ETB",
                "EUR",
                "FJD",
                "FKP",
                "GBP",
                "GEL",
                "GGP",
                "GHS",
                "GIP",
                "GMD",
                "GNF",
                "GTQ",
                "GYD",
                "HKD",
                "HNL",
                "HRK",
                "HTG",
                "HUF",
                "IDR",
                "ILS",
                "IMP",
                "INR",
                "IQD",
                "IRR",
                "ISK",
                "JEP",
                "JMD",
                "JOD",
                "JPY",
                "KES",
                "KGS",
                "KHR",
                "KMF",
                "KPW",
                "KRW",
                "KWD",
                "KYD",
                "KZT",
                "LAK",
                "LBP",
                "LKR",
                "LRD",
                "LSL",
                "LYD",
                "MAD",
                "MDL",
                "MGA",
                "MKD",
                "MMK",
                "MNT",
                "MOP",
                "MRO",
                "MUR",
                "MVR",
                "MWK",
                "MXN",
                "MYR",
                "MZN",
                "NAD",
                "NGN",
                "NIO",
                "NOK",
                "NPR",
                "NZD",
                "OMR",
                "PAB",
                "PEN",
                "PGK",
                "PHP",
                "PKR",
                "PLN",
                "PRB",
                "PYG",
                "QAR",
                "RON",
                "RSD",
                "RUB",
                "RWF",
                "SAR",
                "SBD",
                "SCR",
                "SDG",
                "SEK",
                "SGD",
                "SHP",
                "SLL",
                "SOS",
                "SRD",
                "SSP",
                "STD",
                "SYP",
                "SZL",
                "THB",
                "TJS",
                "TMT",
                "TND",
                "TOP",
                "TRY",
                "TTD",
                "TWD",
                "TZS",
                "UAH",
                "UGX",
                "USD",
                "UYU",
                "UZS",
                "VEF",
                "VND",
                "VUV",
                "WST",
                "XAF",
                "XCD",
                "XOF",
                "XPF",
                "YER",
                "ZAR",
                "ZMW"
              ],
              "description": "Currency the order was created with, in ISO format."
            },
            "customer_id": {
              "required": false,
              "description": "User ID who owns the order. 0 for guests."
            },
            "billing": {
              "required": false,
              "description": "Billing address."
            },
            "shipping": {
              "required": false,
              "description": "Shipping address."
            },
            "payment_method": {
              "required": false,
              "description": "Payment method ID."
            },
            "payment_method_title": {
              "required": false,
              "description": "Payment method title."
            },
            "set_paid": {
              "required": false,
              "description": "Define if the order is paid. It will set the status to processing and reduce stock items."
            },
            "transaction_id": {
              "required": false,
              "description": "Unique transaction ID."
            },
            "customer_note": {
              "required": false,
              "description": "Note left by customer during checkout."
            },
            "line_items": {
              "required": false,
              "description": "Line items data."
            },
            "shipping_lines": {
              "required": false,
              "description": "Shipping lines data."
            },
            "fee_lines": {
              "required": false,
              "description": "Fee lines data."
            },
            "coupon_lines": {
              "required": false,
              "description": "Coupons line data."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/orders/batch"
      }
    },
    "/wc/v1/products/attributes/(?P<attribute_id>[\\d]+)/terms": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "name",
              "enum": [
                "id",
                "include",
                "name",
                "slug",
                "term_group",
                "description",
                "count"
              ],
              "description": "Sort collection by resource attribute."
            },
            "hide_empty": {
              "required": false,
              "default": false,
              "description": "Whether to hide resources not assigned to any products."
            },
            "parent": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific parent."
            },
            "product": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific product."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to resources with a specific slug."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        }
      ]
    },
    "/wc/v1/products/attributes/(?P<attribute_id>[\\d]+)/terms/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Term name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/products/attributes/(?P<attribute_id>[\\d]+)/terms/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Term name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        }
      ]
    },
    "/wc/v1/products/attributes": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "type": {
              "required": false,
              "default": "select",
              "enum": [
                "select",
                "text"
              ],
              "description": "Type of attribute."
            },
            "order_by": {
              "required": false,
              "default": "menu_order",
              "enum": [
                "menu_order",
                "name",
                "name_num",
                "id"
              ],
              "description": "Default sort order."
            },
            "has_archives": {
              "required": false,
              "default": false,
              "description": "Enable/Disable attribute archives."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/attributes"
      }
    },
    "/wc/v1/products/attributes/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Attribute name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "type": {
              "required": false,
              "enum": [
                "select",
                "text"
              ],
              "description": "Type of attribute."
            },
            "order_by": {
              "required": false,
              "enum": [
                "menu_order",
                "name",
                "name_num",
                "id"
              ],
              "description": "Default sort order."
            },
            "has_archives": {
              "required": false,
              "description": "Enable/Disable attribute archives."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/products/categories": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "name",
              "enum": [
                "id",
                "include",
                "name",
                "slug",
                "term_group",
                "description",
                "count"
              ],
              "description": "Sort collection by resource attribute."
            },
            "hide_empty": {
              "required": false,
              "default": false,
              "description": "Whether to hide resources not assigned to any products."
            },
            "parent": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific parent."
            },
            "product": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific product."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to resources with a specific slug."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            },
            "display": {
              "required": false,
              "default": "default",
              "enum": [
                "default",
                "products",
                "subcategories",
                "both"
              ],
              "description": "Category archive display type."
            },
            "image": {
              "required": false,
              "description": "Image URL."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/categories"
      }
    },
    "/wc/v1/products/categories/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Category name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            },
            "display": {
              "required": false,
              "enum": [
                "default",
                "products",
                "subcategories",
                "both"
              ],
              "description": "Category archive display type."
            },
            "image": {
              "required": false,
              "description": "Image URL."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/products/categories/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Category name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            },
            "display": {
              "required": false,
              "enum": [
                "default",
                "products",
                "subcategories",
                "both"
              ],
              "description": "Category archive display type."
            },
            "image": {
              "required": false,
              "description": "Image URL."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/categories/batch"
      }
    },
    "/wc/v1/products/(?P<product_id>[\\d]+)/reviews": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ]
    },
    "/wc/v1/products/(?P<product_id>[\\d]+)/reviews/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ]
    },
    "/wc/v1/products/shipping_classes": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "name",
              "enum": [
                "id",
                "include",
                "name",
                "slug",
                "term_group",
                "description",
                "count"
              ],
              "description": "Sort collection by resource attribute."
            },
            "hide_empty": {
              "required": false,
              "default": false,
              "description": "Whether to hide resources not assigned to any products."
            },
            "product": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific product."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to resources with a specific slug."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/shipping_classes"
      }
    },
    "/wc/v1/products/shipping_classes/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Shipping class name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/products/shipping_classes/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Shipping class name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "parent": {
              "required": false,
              "description": "The id for the parent of the resource."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/shipping_classes/batch"
      }
    },
    "/wc/v1/products/tags": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "name",
              "enum": [
                "id",
                "include",
                "name",
                "slug",
                "term_group",
                "description",
                "count"
              ],
              "description": "Sort collection by resource attribute."
            },
            "hide_empty": {
              "required": false,
              "default": false,
              "description": "Whether to hide resources not assigned to any products."
            },
            "product": {
              "required": false,
              "description": "Limit result set to resources assigned to a specific product."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to resources with a specific slug."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/tags"
      }
    },
    "/wc/v1/products/tags/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Tag name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/products/tags/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Tag name."
            },
            "slug": {
              "required": false,
              "description": "An alphanumeric identifier for the resource unique to its type."
            },
            "description": {
              "required": false,
              "description": "HTML description of the resource."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/tags/batch"
      }
    },
    "/wc/v1/products": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "after": {
              "required": false,
              "description": "Limit response to resources published after a given ISO8601 compliant date."
            },
            "before": {
              "required": false,
              "description": "Limit response to resources published before a given ISO8601 compliant date."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "desc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "date",
              "enum": [
                "date",
                "id",
                "include",
                "title",
                "slug"
              ],
              "description": "Sort collection by object attribute."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to posts with a specific slug."
            },
            "filter": {
              "required": false,
              "description": "Use WP Query arguments to modify the response; private query vars require appropriate authorization."
            },
            "status": {
              "required": false,
              "default": "any",
              "enum": [
                "any",
                "draft",
                "pending",
                "private",
                "publish"
              ],
              "description": "Limit result set to products assigned a specific status."
            },
            "type": {
              "required": false,
              "enum": [
                "simple",
                "grouped",
                "external",
                "variable"
              ],
              "description": "Limit result set to products assigned a specific type."
            },
            "category": {
              "required": false,
              "description": "Limit result set to products assigned a specific category."
            },
            "tag": {
              "required": false,
              "description": "Limit result set to products assigned a specific tag."
            },
            "shipping_class": {
              "required": false,
              "description": "Limit result set to products assigned a specific shipping class."
            },
            "attribute": {
              "required": false,
              "description": "Limit result set to products with a specific attribute."
            },
            "attribute_term": {
              "required": false,
              "description": "Limit result set to products with a specific attribute term (required an assigned attribute)."
            },
            "sku": {
              "required": false,
              "description": "Limit result set to products with a specific SKU."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Product name."
            },
            "slug": {
              "required": false,
              "description": "Product slug."
            },
            "type": {
              "required": false,
              "default": "simple",
              "enum": [
                "simple",
                "grouped",
                "external",
                "variable"
              ],
              "description": "Product type."
            },
            "status": {
              "required": false,
              "default": "publish",
              "enum": [
                "draft",
                "pending",
                "private",
                "publish"
              ],
              "description": "Product status (post status)."
            },
            "featured": {
              "required": false,
              "default": false,
              "description": "Featured product."
            },
            "catalog_visibility": {
              "required": false,
              "default": "visible",
              "enum": [
                "visible",
                "catalog",
                "search",
                "hidden"
              ],
              "description": "Catalog visibility."
            },
            "description": {
              "required": false,
              "description": "Product description."
            },
            "short_description": {
              "required": false,
              "description": "Product short description."
            },
            "sku": {
              "required": false,
              "description": "Unique identifier."
            },
            "regular_price": {
              "required": false,
              "description": "Product regular price."
            },
            "sale_price": {
              "required": false,
              "description": "Product sale price."
            },
            "date_on_sale_from": {
              "required": false,
              "description": "Start date of sale price."
            },
            "date_on_sale_to": {
              "required": false,
              "description": "End data of sale price."
            },
            "virtual": {
              "required": false,
              "default": false,
              "description": "If the product is virtual."
            },
            "downloadable": {
              "required": false,
              "default": false,
              "description": "If the product is downloadable."
            },
            "downloads": {
              "required": false,
              "description": "List of downloadable files."
            },
            "download_limit": {
              "required": false,
              "description": "Amount of times the product can be downloaded."
            },
            "download_expiry": {
              "required": false,
              "description": "Number of days that the customer has up to be able to download the product."
            },
            "download_type": {
              "required": false,
              "default": "standard",
              "enum": [
                "standard",
                "application",
                "music"
              ],
              "description": "Download type, this controls the schema on the front-end."
            },
            "external_url": {
              "required": false,
              "description": "Product external URL. Only for external products."
            },
            "button_text": {
              "required": false,
              "description": "Product external button text. Only for external products."
            },
            "tax_status": {
              "required": false,
              "default": "taxable",
              "enum": [
                "taxable",
                "shipping",
                "none"
              ],
              "description": "Tax status."
            },
            "tax_class": {
              "required": false,
              "description": "Tax class."
            },
            "manage_stock": {
              "required": false,
              "default": false,
              "description": "Stock management at product level."
            },
            "stock_quantity": {
              "required": false,
              "description": "Stock quantity."
            },
            "in_stock": {
              "required": false,
              "default": true,
              "description": "Controls whether or not the product is listed as \"in stock\" or \"out of stock\" on the frontend."
            },
            "backorders": {
              "required": false,
              "default": "no",
              "enum": [
                "no",
                "notify",
                "yes"
              ],
              "description": "If managing stock, this controls if backorders are allowed."
            },
            "sold_individually": {
              "required": false,
              "default": false,
              "description": "Allow one item to be bought in a single order."
            },
            "weight": {
              "required": false,
              "description": "Product weight (kg)."
            },
            "dimensions": {
              "required": false,
              "description": "Product dimensions."
            },
            "shipping_class": {
              "required": false,
              "description": "Shipping class slug."
            },
            "reviews_allowed": {
              "required": false,
              "default": true,
              "description": "Allow reviews."
            },
            "upsell_ids": {
              "required": false,
              "description": "List of up-sell products IDs."
            },
            "cross_sell_ids": {
              "required": false,
              "description": "List of cross-sell products IDs."
            },
            "parent_id": {
              "required": false,
              "description": "Product parent ID."
            },
            "purchase_note": {
              "required": false,
              "description": "Optional note to send the customer after purchase."
            },
            "categories": {
              "required": false,
              "description": "List of categories."
            },
            "tags": {
              "required": false,
              "description": "List of tags."
            },
            "images": {
              "required": false,
              "description": "List of images."
            },
            "attributes": {
              "required": false,
              "description": "List of attributes."
            },
            "default_attributes": {
              "required": false,
              "description": "Defaults variation attributes."
            },
            "variations": {
              "required": false,
              "description": "List of variations."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort products."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products"
      }
    },
    "/wc/v1/products/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Product name."
            },
            "slug": {
              "required": false,
              "description": "Product slug."
            },
            "type": {
              "required": false,
              "enum": [
                "simple",
                "grouped",
                "external",
                "variable"
              ],
              "description": "Product type."
            },
            "status": {
              "required": false,
              "enum": [
                "draft",
                "pending",
                "private",
                "publish"
              ],
              "description": "Product status (post status)."
            },
            "featured": {
              "required": false,
              "description": "Featured product."
            },
            "catalog_visibility": {
              "required": false,
              "enum": [
                "visible",
                "catalog",
                "search",
                "hidden"
              ],
              "description": "Catalog visibility."
            },
            "description": {
              "required": false,
              "description": "Product description."
            },
            "short_description": {
              "required": false,
              "description": "Product short description."
            },
            "sku": {
              "required": false,
              "description": "Unique identifier."
            },
            "regular_price": {
              "required": false,
              "description": "Product regular price."
            },
            "sale_price": {
              "required": false,
              "description": "Product sale price."
            },
            "date_on_sale_from": {
              "required": false,
              "description": "Start date of sale price."
            },
            "date_on_sale_to": {
              "required": false,
              "description": "End data of sale price."
            },
            "virtual": {
              "required": false,
              "description": "If the product is virtual."
            },
            "downloadable": {
              "required": false,
              "description": "If the product is downloadable."
            },
            "downloads": {
              "required": false,
              "description": "List of downloadable files."
            },
            "download_limit": {
              "required": false,
              "description": "Amount of times the product can be downloaded."
            },
            "download_expiry": {
              "required": false,
              "description": "Number of days that the customer has up to be able to download the product."
            },
            "download_type": {
              "required": false,
              "enum": [
                "standard",
                "application",
                "music"
              ],
              "description": "Download type, this controls the schema on the front-end."
            },
            "external_url": {
              "required": false,
              "description": "Product external URL. Only for external products."
            },
            "button_text": {
              "required": false,
              "description": "Product external button text. Only for external products."
            },
            "tax_status": {
              "required": false,
              "enum": [
                "taxable",
                "shipping",
                "none"
              ],
              "description": "Tax status."
            },
            "tax_class": {
              "required": false,
              "description": "Tax class."
            },
            "manage_stock": {
              "required": false,
              "description": "Stock management at product level."
            },
            "stock_quantity": {
              "required": false,
              "description": "Stock quantity."
            },
            "in_stock": {
              "required": false,
              "description": "Controls whether or not the product is listed as \"in stock\" or \"out of stock\" on the frontend."
            },
            "backorders": {
              "required": false,
              "enum": [
                "no",
                "notify",
                "yes"
              ],
              "description": "If managing stock, this controls if backorders are allowed."
            },
            "sold_individually": {
              "required": false,
              "description": "Allow one item to be bought in a single order."
            },
            "weight": {
              "required": false,
              "description": "Product weight (kg)."
            },
            "dimensions": {
              "required": false,
              "description": "Product dimensions."
            },
            "shipping_class": {
              "required": false,
              "description": "Shipping class slug."
            },
            "reviews_allowed": {
              "required": false,
              "description": "Allow reviews."
            },
            "upsell_ids": {
              "required": false,
              "description": "List of up-sell products IDs."
            },
            "cross_sell_ids": {
              "required": false,
              "description": "List of cross-sell products IDs."
            },
            "parent_id": {
              "required": false,
              "description": "Product parent ID."
            },
            "purchase_note": {
              "required": false,
              "description": "Optional note to send the customer after purchase."
            },
            "categories": {
              "required": false,
              "description": "List of categories."
            },
            "tags": {
              "required": false,
              "description": "List of tags."
            },
            "images": {
              "required": false,
              "description": "List of images."
            },
            "attributes": {
              "required": false,
              "description": "List of attributes."
            },
            "default_attributes": {
              "required": false,
              "description": "Defaults variation attributes."
            },
            "variations": {
              "required": false,
              "description": "List of variations."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort products."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Whether to bypass trash and force deletion."
            },
            "reassign": {
              "required": false
            }
          }
        }
      ]
    },
    "/wc/v1/products/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "Product name."
            },
            "slug": {
              "required": false,
              "description": "Product slug."
            },
            "type": {
              "required": false,
              "enum": [
                "simple",
                "grouped",
                "external",
                "variable"
              ],
              "description": "Product type."
            },
            "status": {
              "required": false,
              "enum": [
                "draft",
                "pending",
                "private",
                "publish"
              ],
              "description": "Product status (post status)."
            },
            "featured": {
              "required": false,
              "description": "Featured product."
            },
            "catalog_visibility": {
              "required": false,
              "enum": [
                "visible",
                "catalog",
                "search",
                "hidden"
              ],
              "description": "Catalog visibility."
            },
            "description": {
              "required": false,
              "description": "Product description."
            },
            "short_description": {
              "required": false,
              "description": "Product short description."
            },
            "sku": {
              "required": false,
              "description": "Unique identifier."
            },
            "regular_price": {
              "required": false,
              "description": "Product regular price."
            },
            "sale_price": {
              "required": false,
              "description": "Product sale price."
            },
            "date_on_sale_from": {
              "required": false,
              "description": "Start date of sale price."
            },
            "date_on_sale_to": {
              "required": false,
              "description": "End data of sale price."
            },
            "virtual": {
              "required": false,
              "description": "If the product is virtual."
            },
            "downloadable": {
              "required": false,
              "description": "If the product is downloadable."
            },
            "downloads": {
              "required": false,
              "description": "List of downloadable files."
            },
            "download_limit": {
              "required": false,
              "description": "Amount of times the product can be downloaded."
            },
            "download_expiry": {
              "required": false,
              "description": "Number of days that the customer has up to be able to download the product."
            },
            "download_type": {
              "required": false,
              "enum": [
                "standard",
                "application",
                "music"
              ],
              "description": "Download type, this controls the schema on the front-end."
            },
            "external_url": {
              "required": false,
              "description": "Product external URL. Only for external products."
            },
            "button_text": {
              "required": false,
              "description": "Product external button text. Only for external products."
            },
            "tax_status": {
              "required": false,
              "enum": [
                "taxable",
                "shipping",
                "none"
              ],
              "description": "Tax status."
            },
            "tax_class": {
              "required": false,
              "description": "Tax class."
            },
            "manage_stock": {
              "required": false,
              "description": "Stock management at product level."
            },
            "stock_quantity": {
              "required": false,
              "description": "Stock quantity."
            },
            "in_stock": {
              "required": false,
              "description": "Controls whether or not the product is listed as \"in stock\" or \"out of stock\" on the frontend."
            },
            "backorders": {
              "required": false,
              "enum": [
                "no",
                "notify",
                "yes"
              ],
              "description": "If managing stock, this controls if backorders are allowed."
            },
            "sold_individually": {
              "required": false,
              "description": "Allow one item to be bought in a single order."
            },
            "weight": {
              "required": false,
              "description": "Product weight (kg)."
            },
            "dimensions": {
              "required": false,
              "description": "Product dimensions."
            },
            "shipping_class": {
              "required": false,
              "description": "Shipping class slug."
            },
            "reviews_allowed": {
              "required": false,
              "description": "Allow reviews."
            },
            "upsell_ids": {
              "required": false,
              "description": "List of up-sell products IDs."
            },
            "cross_sell_ids": {
              "required": false,
              "description": "List of cross-sell products IDs."
            },
            "parent_id": {
              "required": false,
              "description": "Product parent ID."
            },
            "purchase_note": {
              "required": false,
              "description": "Optional note to send the customer after purchase."
            },
            "categories": {
              "required": false,
              "description": "List of categories."
            },
            "tags": {
              "required": false,
              "description": "List of tags."
            },
            "images": {
              "required": false,
              "description": "List of images."
            },
            "attributes": {
              "required": false,
              "description": "List of attributes."
            },
            "default_attributes": {
              "required": false,
              "description": "Defaults variation attributes."
            },
            "variations": {
              "required": false,
              "description": "List of variations."
            },
            "menu_order": {
              "required": false,
              "description": "Menu order, used to custom sort products."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/products/batch"
      }
    },
    "/wc/v1/reports/sales": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "period": {
              "required": false,
              "enum": [
                "week",
                "month",
                "last_month",
                "year"
              ],
              "description": "Report period."
            },
            "date_min": {
              "required": false,
              "description": "Return sales for a specific start date, the date need to be in the YYYY-MM-AA format."
            },
            "date_max": {
              "required": false,
              "description": "Return sales for a specific end date, the date need to be in the YYYY-MM-AA format."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/reports/sales"
      }
    },
    "/wc/v1/reports/top_sellers": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "period": {
              "required": false,
              "enum": [
                "week",
                "month",
                "last_month",
                "year"
              ],
              "description": "Report period."
            },
            "date_min": {
              "required": false,
              "description": "Return sales for a specific start date, the date need to be in the YYYY-MM-AA format."
            },
            "date_max": {
              "required": false,
              "description": "Return sales for a specific end date, the date need to be in the YYYY-MM-AA format."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/reports/top_sellers"
      }
    },
    "/wc/v1/reports": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/reports"
      }
    },
    "/wc/v1/taxes/classes": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": true,
              "description": "Tax class name."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/taxes/classes"
      }
    },
    "/wc/v1/taxes/classes/(?P<slug>\\w[\\w\\s\\-]*)": {
      "namespace": "wc/v1",
      "methods": [
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/taxes": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "asc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "order",
              "enum": [
                "id",
                "order"
              ],
              "description": "Sort collection by object attribute."
            },
            "class": {
              "required": false,
              "enum": [
                "standard",
                "reduced-rate",
                "zero-rate"
              ],
              "description": "Sort by tax class."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "country": {
              "required": false,
              "description": "Country ISO 3166 code."
            },
            "state": {
              "required": false,
              "description": "State code."
            },
            "postcode": {
              "required": false,
              "description": "Postcode/ZIP."
            },
            "city": {
              "required": false,
              "description": "City name."
            },
            "rate": {
              "required": false,
              "description": "Tax rate."
            },
            "name": {
              "required": false,
              "description": "Tax rate name."
            },
            "priority": {
              "required": false,
              "default": 1,
              "description": "Tax priority."
            },
            "compound": {
              "required": false,
              "default": false,
              "description": "Whether or not this is a compound rate."
            },
            "shipping": {
              "required": false,
              "default": true,
              "description": "Whether or not this tax rate also gets applied to shipping."
            },
            "order": {
              "required": false,
              "description": "Indicates the order that will appear in queries."
            },
            "class": {
              "required": false,
              "default": "standard",
              "enum": [
                "standard",
                "reduced-rate",
                "zero-rate"
              ],
              "description": "Tax class."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/taxes"
      }
    },
    "/wc/v1/taxes/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "country": {
              "required": false,
              "description": "Country ISO 3166 code."
            },
            "state": {
              "required": false,
              "description": "State code."
            },
            "postcode": {
              "required": false,
              "description": "Postcode/ZIP."
            },
            "city": {
              "required": false,
              "description": "City name."
            },
            "rate": {
              "required": false,
              "description": "Tax rate."
            },
            "name": {
              "required": false,
              "description": "Tax rate name."
            },
            "priority": {
              "required": false,
              "description": "Tax priority."
            },
            "compound": {
              "required": false,
              "description": "Whether or not this is a compound rate."
            },
            "shipping": {
              "required": false,
              "description": "Whether or not this tax rate also gets applied to shipping."
            },
            "order": {
              "required": false,
              "description": "Indicates the order that will appear in queries."
            },
            "class": {
              "required": false,
              "enum": [
                "standard",
                "reduced-rate",
                "zero-rate"
              ],
              "description": "Tax class."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/taxes/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "country": {
              "required": false,
              "description": "Country ISO 3166 code."
            },
            "state": {
              "required": false,
              "description": "State code."
            },
            "postcode": {
              "required": false,
              "description": "Postcode/ZIP."
            },
            "city": {
              "required": false,
              "description": "City name."
            },
            "rate": {
              "required": false,
              "description": "Tax rate."
            },
            "name": {
              "required": false,
              "description": "Tax rate name."
            },
            "priority": {
              "required": false,
              "description": "Tax priority."
            },
            "compound": {
              "required": false,
              "description": "Whether or not this is a compound rate."
            },
            "shipping": {
              "required": false,
              "description": "Whether or not this tax rate also gets applied to shipping."
            },
            "order": {
              "required": false,
              "description": "Indicates the order that will appear in queries."
            },
            "class": {
              "required": false,
              "enum": [
                "standard",
                "reduced-rate",
                "zero-rate"
              ],
              "description": "Tax class."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/taxes/batch"
      }
    },
    "/wc/v1/webhooks/(?P<webhook_id>[\\d]+)/deliveries": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ]
    },
    "/wc/v1/webhooks/(?P<webhook_id>[\\d]+)/deliveries/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        }
      ]
    },
    "/wc/v1/webhooks": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            },
            "page": {
              "required": false,
              "default": 1,
              "description": "Current page of the collection."
            },
            "per_page": {
              "required": false,
              "default": 10,
              "description": "Maximum number of items to be returned in result set."
            },
            "search": {
              "required": false,
              "description": "Limit results to those matching a string."
            },
            "after": {
              "required": false,
              "description": "Limit response to resources published after a given ISO8601 compliant date."
            },
            "before": {
              "required": false,
              "description": "Limit response to resources published before a given ISO8601 compliant date."
            },
            "exclude": {
              "required": false,
              "default": [],
              "description": "Ensure result set excludes specific ids."
            },
            "include": {
              "required": false,
              "default": [],
              "description": "Limit result set to specific ids."
            },
            "offset": {
              "required": false,
              "description": "Offset the result set by a specific number of items."
            },
            "order": {
              "required": false,
              "default": "desc",
              "enum": [
                "asc",
                "desc"
              ],
              "description": "Order sort attribute ascending or descending."
            },
            "orderby": {
              "required": false,
              "default": "date",
              "enum": [
                "date",
                "id",
                "include",
                "title",
                "slug"
              ],
              "description": "Sort collection by object attribute."
            },
            "slug": {
              "required": false,
              "description": "Limit result set to posts with a specific slug."
            },
            "filter": {
              "required": false,
              "description": "Use WP Query arguments to modify the response; private query vars require appropriate authorization."
            },
            "status": {
              "required": false,
              "default": "all",
              "enum": [
                "all",
                "active",
                "paused",
                "disabled"
              ],
              "description": "Limit result set to webhooks assigned a specific status."
            }
          }
        },
        {
          "methods": [
            "POST"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "A friendly name for the webhook."
            },
            "status": {
              "required": false,
              "default": "active",
              "enum": [
                "active",
                "paused",
                "disabled"
              ],
              "description": "Webhook status."
            },
            "topic": {
              "required": true
            },
            "secret": {
              "required": false,
              "description": "Secret key used to generate a hash of the delivered webhook and provided in the request headers. This will default is a MD5 hash from the current user's ID|username if not provided."
            },
            "delivery_url": {
              "required": true
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/webhooks"
      }
    },
    "/wc/v1/webhooks/(?P<id>[\\d]+)": {
      "namespace": "wc/v1",
      "methods": [
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE"
      ],
      "endpoints": [
        {
          "methods": [
            "GET"
          ],
          "args": {
            "context": {
              "required": false,
              "default": "view",
              "enum": [
                "view",
                "edit"
              ],
              "description": "Scope under which the request is made; determines fields present in response."
            }
          }
        },
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "A friendly name for the webhook."
            },
            "status": {
              "required": false,
              "enum": [
                "active",
                "paused",
                "disabled"
              ],
              "description": "Webhook status."
            },
            "topic": {
              "required": false,
              "description": "Webhook topic."
            },
            "secret": {
              "required": false,
              "description": "Secret key used to generate a hash of the delivered webhook and provided in the request headers. This will default is a MD5 hash from the current user's ID|username if not provided."
            }
          }
        },
        {
          "methods": [
            "DELETE"
          ],
          "args": {
            "force": {
              "required": false,
              "default": false,
              "description": "Required to be true, as resource does not support trashing."
            }
          }
        }
      ]
    },
    "/wc/v1/webhooks/batch": {
      "namespace": "wc/v1",
      "methods": [
        "POST",
        "PUT",
        "PATCH"
      ],
      "endpoints": [
        {
          "methods": [
            "POST",
            "PUT",
            "PATCH"
          ],
          "args": {
            "name": {
              "required": false,
              "description": "A friendly name for the webhook."
            },
            "status": {
              "required": false,
              "enum": [
                "active",
                "paused",
                "disabled"
              ],
              "description": "Webhook status."
            },
            "topic": {
              "required": false,
              "description": "Webhook topic."
            },
            "secret": {
              "required": false,
              "description": "Secret key used to generate a hash of the delivered webhook and provided in the request headers. This will default is a MD5 hash from the current user's ID|username if not provided."
            }
          }
        }
      ],
      "_links": {
        "self": "https://example.com/wp-json/wc/v1/webhooks/batch"
      }
    }
  },
  "_links": {
    "up": [
      {
        "href": "https://example.com/wp-json/"
      }
    ]
  }
}
```
