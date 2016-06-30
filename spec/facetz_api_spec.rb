require 'spec_helper'

describe FacetzApi do
  it 'has a version number' do
    expect(FacetzApi::VERSION).not_to be nil
  end

  it 'check default configuration' do
    expect(FacetzApi.configuration.user.empty?).to be false
    expect(FacetzApi.configuration.key.empty?).to be false
    expect(FacetzApi.configuration.version).to eq "v1/"
  end

  it 'expect response api' do
    conn = FacetzApi::Client.new
    result = conn.lookup(ids: ["ii"])
    expect(result)
  end
end
