require 'http'
require 'http/configuration'
require 'http/response/json'

module HTTP
  
  class Repeater
    
    extend Chainable
    extend Configuration::Mixin

    def self.request(verb, uri, options = {})
      uri = base_uri ? "#{base_uri}#{uri}" : uri
      branch(options).request verb, uri
    end

    def self.branch(options)
      if options.class == HTTP::Options
        options.headers.merge!(base_headers)
      else
        options[:headers] ||= {}
        options[:headers].merge!(base_headers)
      end
      HTTP::Client.new(options)
    end

    def self.after_configure
      @configuration
    end
  end
end