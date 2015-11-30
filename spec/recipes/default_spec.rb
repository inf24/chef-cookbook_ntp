##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

require_relative '../spec_helper'

describe 'ntp::centos' do
  let (:chef_run) { ChefSpec::ServerRunner.new(platform:'centos', version:'7.0').converge 'ntp::default' }
  it 'installs ntp' do
    expect(chef_run).to install_package('ntp')
  end
  it 'start ntp' do
    expect(chef_run).to start_service('ntpd')
  end
  it 'enable ntp' do
    expect(chef_run).to enable_service('ntpd')
  end
  it 'template exit' do
    expect(chef_run).to create_template('/etc/ntp.conf')
  end
end

describe 'ntp::suse' do
  let (:chef_run) { ChefSpec::ServerRunner.new(platform:'suse', version:'11.1').converge 'ntp::default' }
  it 'installs ntp' do
    expect(chef_run).to install_package('ntp')
  end
  it 'start ntp' do
    expect(chef_run).to start_service('ntp')
  end
  it 'enable ntp' do
    expect(chef_run).to enable_service('ntp')
  end
  it 'template exit' do
    expect(chef_run).to create_template('/etc/ntp.conf')
  end
end
