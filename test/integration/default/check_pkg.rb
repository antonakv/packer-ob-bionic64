describe package('thin-provisioning-tools') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('jq') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('language-pack-en') do
  it { should be_installed }
end
