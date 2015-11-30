##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

require_relative 'spec_helper'

describe command('/bin/sh --version') do
  its(:exit_status) { should eq 0 }
end

