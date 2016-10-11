require 'serverspec'
set :backend, :exec

describe file('/tmp/epel-release-latest-7.noarch.rpm') do
  it { should exist }
end

describe yumrepo('epel') do
  it { should exist }
end

describe package('python-pip') do
  it { should be_installed }
end

describe file('/usr/lib/python2.7/site-packages/docker') do
  it { should be_directory}
end

describe command('pip show docker-py') do
  its(:stdout) { should match /Location:/ }
end
