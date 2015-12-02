##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

require_relative 'spec_helper'

describe command('/bin/sh --version') do
  its(:exit_status) { should eq 0 }
end

describe package('ntp') do
  it { should be_installed}
end
describe service('ntpd') do
  it { should be_running }
  it { should be_enabled }
end
describe file('/etc/ntp.conf') do
  it { should be_file }
end
describe port(123) do
  it { should be_listening }
end
