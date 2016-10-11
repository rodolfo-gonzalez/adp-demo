require 'serverspec'
set :backend, :exec

describe yumrepo('Docker') do
  it { should exist }
end

describe package('docker-engine') do
  it { should be_installed }
end
