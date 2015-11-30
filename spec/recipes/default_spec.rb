##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

require_relative '../spec_helper'

describe 'ntp::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }
  it 'template' do
    expect(chef_run).to create_directory('/root').with(user: 'root', group: 'root')
  end
end
