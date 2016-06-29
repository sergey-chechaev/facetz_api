require 'faraday'
require 'faraday_middleware'
require 'faraday_middleware/multi_json'

require "facetz_api/version"
require "facetz_api/configuration"
require "facetz_api/api"
require "facetz_api/client"

module FacetzApi
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
