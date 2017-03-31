require 'spec_helper'

describe 'pam_touchid' do
  let(:facts) { default_test_facts.merge(:touchid_present => "true") }

  it do
    should contain_file('/etc/pam.d/sudo')
    should contain_package('boxen/brews/pam_touchid')
    should contain_homebrew__formula('pam_touchid')
  end
end
