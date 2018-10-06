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
>> HTTP::Repeater.base_uri = {host: "my.private.api", ssl: true}
=> {:host=>"my.private.api"}
>> HTTP::Repeater.get("/users")
=> #<HTTP::Response/1.1 200 OK { "Content-Type"=>"application/json", "Connection"=>"close"}>

```