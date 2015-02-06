#
# Cookbook Name:: bazaar
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'bazaar::default' do
  let(:runner) { ChefSpec::ServerRunner.new(REDHAT_OPTS) }
  let(:node) { runner.node }

  let(:chef_run) do
    runner.converge(described_recipe)
  end

  let(:file_cache_path) { Chef::Config[:file_cache_path] }

  it 'installs the bazaar package' do
    expect(chef_run).to install_package('bzr')
  end
end
