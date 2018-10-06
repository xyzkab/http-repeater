require 'http'
require 'http/configuration'
require 'http/response/json'

module HTTP
  
  class Repeater
    
    extend Chainable
    extend Configuration

    def self.request(verb, uri, options = {})
      uri = base_uri ? "#{base_uri}#{uri}" : uri
      branch(options).request verb, uri
    end
  end
end