
# bzr 'maas-image-builder' do
#   source lp
#   user maas-maintainers
#   path maas/maas-image-builder
# end

actions :clone
default_action :clone

attribute :key,   kind_of: String, name_attribute: true
attribute :source,   kind_of: String, default: 'lp'
attribute :user,  kind_of: String
attribute :remote_path,  kind_of: String
attribute :local_path, kind_of: String, required: true
