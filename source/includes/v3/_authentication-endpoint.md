# Authentication Endpoint #

Starting in WooCommerce 2.4 we introduced an Authentication Endpoint, This can be used by any app to allow users to generate API keys. This makes integration with WooCommerce API simpler because the user only needs to access a URL and click "accept". After being redirected back to the app, the API keys will be sent in a POST request.

The following image illustrates how it's done:

![Authentication Endpoint flow](images/woocommerce-auth-endpoint-flow.png)

<aside class="warning">
	Note that this endpoint works exclusively for users to generate API keys and facilitate integration between the WooCommerce REST API and an application. In no way is this endpoint proposed to be used as login method for customers.
</aside>

## URL parameters ##

|   Parameter   |  Type  |                                                                                  Description                                                                                  |
| -------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `app_name`     | string | Your app name <i class="label label-info">mandatory</i>                                                                                                                       |
| `scope`        | string | Level of access. Available: `read`, `write` and `read_write` <i class="label label-info">mandatory</i>                                                                        |
| `user_id`      | string | User ID in your app. For your internal reference, used when the user is redirected back to your app. NOT THE USER ID IN WOOCOMMERCE <i class="label label-info">mandatory</i> |
| `return_url`   | string | URL the user will be redirected to after authentication <i class="label label-info">mandatory</i>                                                                         |
| `callback_url` | string | URL that will receive the generated API key. Note: this URL should be over **HTTPS** <i class="label label-info">mandatory</i>                                 |

## Creating Authentication Endpoint URL ##

You must use the `/wc-auth/v1/authorize` endpoint and pass the above parameters as a query string.

> Example of how to build an authentication URL:

```shell
# Bash example
STORE_URL='http://example.com'
ENDPOINT='/wc-auth/v1/authorize'
PARAMS="app_name=My App Name&scope=read_write&user_id=123&return_url=http://app.com/return-page&callback_url=https://app.com/callback-endpoint"
QUERY_STRING="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$PARAMS")"
QUERY_STRING=$(echo $QUERY_STRING | sed -e "s/%20/\+/g" -e "s/%3D/\=/g" -e "s/%26/\&/g")

echo "$STORE_URL$ENDPOINT?$QUERY_STRING"
```

```javascript
var querystring = require('querystring');

var store_url = 'http://example.com';
var endpoint = '/wc-auth/v1/authorize';
var params = {
  app_name: 'My App Name',
  scope: 'read_write',
  user_id: 123,
  return_url: 'http://app.com/return-page',
  callback_url: 'https://app.com/callback-endpoint'
};
var query_string = querystring.stringify(params).replace(/%20/g, '+');

console.log(store_url + endpoint + '?' + query_string);
```

```php
<?php
$store_url = 'http://example.com';
$endpoint = '/wc-auth/v1/authorize';
$params = [
    'app_name' => 'My App Name',
    'scope' => 'write',
    'user_id' => 123,
    'return_url' => 'http://app.com',
    'callback_url' => 'https://app.com'
];
$query_string = http_build_query( $params );

echo $store_url . $endpoint . '?' . $query_string;
?>
```

```python
from urllib.parse import urlencode

store_url = 'http://example.com'
endpoint = '/wc-auth/v1/authorize'
params = {
    "app_name": "My App Name",
    "scope": "read_write",
    "user_id": 123,
    "return_url": "http://app.com/return-page",
    "callback_url": "https://app.com/callback-endpoint"
}
query_string = urlencode(params)

print("%s%s?%s" % (store_url, endpoint, query_string))
```

```ruby
require "uri"

store_url = 'http://example.com'
endpoint = '/wc-auth/v1/authorize'
params = {
  app_name: "My App Name",
  scope: "read_write",
  user_id: 123,
  return_url: "http://app.com/return-page",
  callback_url: "https://app.com/callback-endpoint"
}
query_string = URI.encode_www_form(params)

puts "#{store_url}#{endpoint}?#{query_string}"
```

> Example of JSON posted with the API Keys

```
{
    "key_id": 1,
    "user_id": 123,
    "consumer_key": "ck_xxxxxxxxxxxxxxxx",
    "consumer_secret": "cs_xxxxxxxxxxxxxxxx",
    "key_permissions": "read_write"
}
```

Example of the screen that the user will see:

![Authentication Endpoint example](images/woocommerce-auth-endpoint-example.png)

## Notes and Tips ##

- While redirecting the user using `return_url`, you are also sent `success` and `user_id` parameters as query strings.
- `success` sends `0` if the user denied, or `1` if authenticated successfully.
- Use `user_id` to identify the user when redirected back to the (`return_url`) and also remember to save the API Keys when your `callback_url` is posted to after auth.
- The auth endpoint will send the API Keys in JSON format to the `callback_url`, so it's important to remember that some languages such as PHP will not display it inside the `$_POST` global variable, in PHP you can access it using `$HTTP_RAW_POST_DATA` (for old PHP versions) or `file_get_contents('php://input');`.
- This authentication endpoint is used only to make easy integration with WooCommerce REST API. THIS NOT INTENDED TO BE USED AS A LOGIN ENDPOINT FOR CUSTOMERS!
