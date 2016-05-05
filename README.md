# node-test-cookbook

  Chef cookbook for nodejs server with nginx reverse proxy 

## Supported Platforms

NGINX
NODEJS

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['node-test']['default']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### node-test::default

Include `node-test` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[node-test::default]"
  ]
}
```

## License and Authors

Author:: Fabrizio Catitti
