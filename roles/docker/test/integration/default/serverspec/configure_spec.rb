require 'serverspec'
set :backend, :exec

describe file('/tmp/Dockerfile') do
  it { should exist }
end

describe file('/tmp/Dockerfile') do
  its(:md5sum) { should eq 'f0d763b4b3c704b2a334c8c2c0b19053' }
end

describe file('/tmp/gs-spring-boot-docker-0.1.0.jar') do
  it { should exist }
end

describe file('/tmp/gs-spring-boot-docker-0.1.0.jar') do
  its(:md5sum) { should eq 'e991cd15b8dc19ea62787d0f300893b4' }
end
