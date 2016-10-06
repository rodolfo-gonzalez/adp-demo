require 'serverspec'
set :backend, :exec

describe file('/tmp/epel-release-latest-7.noarch.rpm') do
  it { should exists }
end

describe yumrepo('epel') do
  it { should exist }
end

describe package('python-pip') do
  it { should be_installed }
end

# docker-py should be installed
