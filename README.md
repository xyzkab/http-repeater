# http-repeater
This is a request extension for `HTTP` module and inspired by Burpsuite Repeater tool.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'http-repeater', :git => 'https://github.com/xyzkab/http-repeater'
```

And then execute:
```bash
$ bundle install
```

## Documentation

### Basic Usage

Here's some simple examples to get you started:

```ruby
>> require 'http/repeater'
=> true
>> HTTP::Repeater.configure do |conf|
?>  conf.base_uri.host = "my.private.api"
>>  conf.base_uri.ssl  = true
>>  conf.base_headers.content_type = "application/json"
>> end
=> #<HTTP::Configuration:0x0000561dd25be488 @base_uri=#<HTTP::Configuration::BaseURI:0x0000561dd25be410 @host="my.private.api", @port=80, @ssl=true>, @base_headers=#<HTTP::Configuration::BaseHeaders:0x0000561dd25be398 @headers=#<HTTP::Headers {"Content-Type"=>"application/json"}>>>
>> request = HTTP::Repeater.get("/users")
=> #<HTTP::Response/1.1 200 OK { "Content-Type"=>"application/json", "Connection"=>"close"}>
>> request.json?
=> true
>> request.json
=> {:users => [{:id => 1, :name => "administrator"}]}

```
