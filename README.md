monit Cookbook
==============
Installs/Configures monit

Usage
-----
#### monit::default
Just include `monit` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[monit]"
  ]
}
```

#### monit::system

Track load averages, memory usage and cpu usage and alert you when they move outside of certain parameters.


```json
{
  "name":"my_node",
  "run_list": [
    "recipe[monit::system]"
  ]
}
```

#### monit::nginx

Check Nginx process.


```json
{
  "name":"my_node",
  "run_list": [
    "recipe[monit::nginx]"
  ]
}
```

#### monit::mongo

Check mongo server process.


```json
{
  "name":"my_node",
  "run_list": [
    "recipe[monit::nginx]"
  ]
}
```

#### monit::mysql

Check MySQL server process.


```json
{
  "name":"my_node",
  "run_list": [
    "recipe[monit::mysql]"
  ]
}
```


Contributing
------------
1. Fork it (https://github.com/vigosan/monit)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
