# Shipping zone methods #

The shipping zone methods API allows you to create, view, update, and delete individual methods of a shipping zone.

## Shipping method properties ##

| Attribute            | Type    | Description                                                                                                 |
| -------------------- | ------- | ----------------------------------------------------------------------------------------------------------- |
| `instance_id`        | integer | Shipping method instance ID. <i class="label label-info">read-only</i>                                      |
| `title`              | string  | Shipping method customer facing title. <i class="label label-info">read-only</i>                            |
| `order`              | integer | Shipping method sort order.                                                                                 |
| `enabled`            | boolean | Shipping method enabled status.                                                                             |
| `method_id`          | string  | Shipping method ID. <i class="label label-info">read-only</i> <i class="label label-info">mandatory</i>     |
| `method_title`       | string  | Shipping method title. <i class="label label-info">read-only</i>                                            |
| `method_description` | string  | Shipping method description. <i class="label label-info">read-only</i>                                      |
| `settings`           | object  | Shipping method settings. See [Shipping method - Settings properties](#shipping-method-settings-properties) |

### Shipping method - Settings properties ###

| Attribute     | Type   | Description                                                                                                                                                                                     |
| ------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`          | string | A unique identifier for the setting. <i class="label label-info">read-only</i>                                                                                                                  |
| `label`       | string | A human readable label for the setting used in interfaces. <i class="label label-info">read-only</i>                                                                                            |
| `description` | string | A human readable description for the setting used in interfaces. <i class="label label-info">read-only</i>                                                                                      |
| `type`        | string | Type of setting. Options: `text`, `email`, `number`, `color`, `password`, `textarea`, `select`, `multiselect`, `radio`, `image_width` and `checkbox`. <i class="label label-info">read-only</i> |
| `value`       | string | Setting value.                                                                                                                                                                                  |
| `default`     | string | Default value for the setting. <i class="label label-info">read-only</i>                                                                                                                        |
| `tip`         | string | Additional help text shown to the user about the setting. <i class="label label-info">read-only</i>                                                                                             |
| `placeholder` | string | Placeholder text to be displayed in text inputs. <i class="label label-info">read-only</i>                                                                                                      |
