#
# Cookbook:: github
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'github::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

    it 'should install python from package' do
      expect(chef_run).to install_package 'python'
    end

    it 'should install requests plugin using pip management' do
      expect(chef_run).to run execute ('install requests==2.3.0')
    end

    it 'should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    it 'enables the nginx service' do
      expect(chef_run).to start_service 'nginx'
    end

    it 'starts the nginx service' do
      expect(chef_run).to start_service 'nginx'
    end

  end
