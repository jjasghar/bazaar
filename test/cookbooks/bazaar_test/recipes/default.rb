include_recipe 'bazaar'

bazaar 'maas-image-builder' do
  source 'lp'
  user 'maas-maintainers'
  remote_path 'maas/maas-image-builder'
  local_path '/opt/'
end

bazaar 'maas-image-builder' do
  user 'maas-maintainers'
  remote_path 'maas/maas-image-builder'
  local_path '/tmp/'
end

bazaar 'maas-image-builder' do
  user 'maas-maintainers'
  remote_path 'maas/maas-image-builder'
  local_path '/tmp/blahblah/'
end
