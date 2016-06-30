$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'facetz_api'

RSpec.configure do |config|
  config.before(:all) do
    FacetzApi.configure do |config|
      config.user = ENV['FACETZ_USER']
      config.key = ENV['FACETZ_KEY']
      config.version = "v1"
    end
  end
end
