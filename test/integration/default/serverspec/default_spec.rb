require 'spec_helper'

describe package('bzr') do
  it { should be_installed }
end
