# bazaar

This cookbook installs the [bazaar](http://bazaar.canonical.com/en/) application and provides an LWRP
to clone out repositories.

To quote one of the [main sites](http://wiki.bazaar.canonical.com/WhoUsesBzr): "Arguably one of the best revision control systems in the world."

## Platform:
The following platform families are supported:

- Ubuntu 12.04
- Ubuntu 14.04
- RHEL 7
- Fedora 20
- CentOS 7.0
- CentOS 6.5
- Debian 6.0.10
- Debian 7.8

## Usage

This cookbook primarily installs bazaar core packages.

To install bazaar client (all supported platforms):
```
include_recipe 'bazaar'
```

To leverage the LWRP to clone a specific repository off [Launchpad](http://launchpad.net/):

```ruby
bazaar 'friendly-name' do
  source 'lp'  # defaults to 'lp' if you omit the source
  user 'my-user'
  remote_path 'awesome_project/subproject'
  local_path '/opt/'
end
```

The above would in essence translate to something like the following:

```bash
$ cd /opt/
$ bzr branch lp:~my-user/awesome_project/subproject
```

## License and Author

Author:: JJ Asghar (jj@chef.io)

Author:: Fletcher Nichol (fnichol@chef.io)

Copyright:: 2015, Chef Software, Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at:

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
