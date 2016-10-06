require 'serverspec'
set :backend, :exec

describe yumrepo('Docker') do
  if { should exist }
end

describe service('docker-engine') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_enabled }
end

describe service('docker') do
  it { should be_running }
end
