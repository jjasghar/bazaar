require 'chefspec'
require 'chefspec/berkshelf'

require 'fauxhai'
ChefSpec::Coverage.start!

require 'chef/application'

LOG_LEVEL = :fatal
REDHAT_OPTS = {
  platform: 'redhat',
  version: '6.5',
  log_level: LOG_LEVEL,
  file_cache_path: '/tmp'
}
UBUNTU_OPTS = {
  platform: 'ubuntu',
  version: '14.04',
  log_level: LOG_LEVEL,
  file_cache_path: '/tmp'
}
CENTOS_OPTS = {
  platform: 'centos',
  version: '7.0',
  log_level: LOG_LEVEL,
  file_cache_path: '/tmp'
}
FEDORA_OPTS = {
  platform: 'fedora',
  version: '20',
  log_level: LOG_LEVEL,
  file_cache_path: '/tmp'
}
