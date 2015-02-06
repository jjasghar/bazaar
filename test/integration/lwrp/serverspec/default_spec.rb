require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'maas-image-builder' do
  describe file('/opt/maas-image-builder') do
    it { should be_directory }
  end

  describe file('/opt/maas-image-builder/README') do
    it { should be_file }
  end

  describe file('/tmp/maas-image-builder') do
    it { should be_directory }
  end

  describe file('/tmp/maas-image-builder/README') do
    it { should be_file }
  end

  describe file('/tmp/blahblah/maas-image-builder') do
    it { should be_directory }
  end

  describe file('/tmp/blahblah/maas-image-builder/README') do
    it { should be_file }
  end
end
