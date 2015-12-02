ntp Cookbook
============
This Cookbook configure NTP service.

It's support CentOS >= 6.5.

Requirements
------------
#### packages
- `template` - ntp needs toaster to brown your bagel.

Attributes
----------
#### ntp::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ntp']['timeservers']</tt></td>
    <td>array</td>
    <td>list of NTP server</td>
    <td><tt>[0..3].de.pool.ntp.org</tt></td>
  </tr>
</table>

Usage
-----
#### ntp::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `ntp` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ntp]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Maximilian Sparenberg | Max.Sparenberg@icloud.com
