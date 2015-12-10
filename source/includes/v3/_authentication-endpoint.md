# Authentication Endpoint #

Staring in WooCommerce 2.4 we introduced our Authentication Endpoint, where any app can easy allow users to generate API keys and send back automatically to the app.

This makes integration with WooCommerce API much simpler, since the user only needs to access a URL, click in the "accept" button and will be redirected back to the app and the API keys are sent back in a POST request.

The following image illustrates how it's done:

![Authentication Endpoint flow](images/woocommerce-auth-endpoint-flow.png)

<aside class="warning">
	Note that this endpoint works exclusively for users to generate API keys and facilitate integration between the WooCommerce REST API and an application. In no way is this endpoint proposes to be used as login method for customers.
</aside>

## URL parameters ##

|   Paramenter   |  Type  |                                                                                  Description                                                                                  |
| -------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `app_name`     | string | Your app name <i class="label label-info">mandatory</i>                                                                                                                       |
| `scope`        | string | Level of access. Available: `read`, `write` and `read_write` <i class="label label-info">mandatory</i>                                                                        |
| `user_id`      | string | User ID in your app. For your internal reference, used when the user is redirected back to your app. NOT THE USER ID IN WOOCOMMERCE <i class="label label-info">mandatory</i> |
| `return_url`   | string | URL that will be used for receive the user back in your app <i class="label label-info">mandatory</i>                                                                         |
| `callback_url` | string | URL that will receive the generated API key. Important to note that this URL should be over **SSL** <i class="label label-info">mandatory</i>                                 |

## Creating Authentication Endpoint URL ##

You must use the `/wc-auth/v1/authorize` endpoint and pass the above parameters as query string.

> Example of how do it in PHP:

```
$store_url = 'http://example.com';
$endpoint  = '/wc-auth/v1/authorize';
$params    = array(
	'app_name'     => 'My App Name',
	'scope'        => 'read_write',
	'user_id'      => 123,
	'return_url'   => 'http://app.com/return-page',
	'callback_url' => 'https://app.com/callback-endpoint'
);
echo $store_url . $endpoint . '?' . http_build_query( $params );
```

> Example the JSON posted with the API Keys

```
{
    "key_id": 1,
    "user_id": 123,
    "consumer_key": "ck_xxxxxxxxxxxxxxxx",
    "consumer_secret": "cs_xxxxxxxxxxxxxxxx",
    "key_permissions": "read_write"
}
```

Example of the screen that the user will access:

![Authentication Endpoint example](images/woocommerce-auth-endpoint-example.png)

## Notes and Tips ##

- While redirecting the user using `return_url` are also sent `success` and `user_id` parameters as query strings.
- `success` sends `0` if the user denied or `1` if authenticated successfully.
- Use `user_id` to identify the user when redirected back (`return_url`) to your app and also to save the API Keys in your `callback_url`.
- This will send the API Keys in JSON format to the `callback_url`, so it's important to remember that some languages such as PHP will not display it inside the `$_POST` global variable, in PHP you can access it using `$HTTP_RAW_POST_DATA` (for old PHP versions) or `file_get_contents('php://input');`.
- This authentication endpoint is used only to make easy integration with WooCommerce REST API. THIS NOT INTENDED TO BE USED AS A LOGIN ENDPOINT FOR CUSTOMERS!
