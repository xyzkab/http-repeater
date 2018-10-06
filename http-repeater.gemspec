Gem::Specification.new do |s|
  s.name        = 'http-repeater'
  s.version     = '0.0.1'
  s.date        = '2018-09-21'
  s.summary     = 'HTTP::Repeater is a request extension for HTTP module'
  s.description = %q{
    Http::Repeater is a request extension for HTTP module and inspired by Burpsuite Repeater tool
  }
  s.add_dependency('http')
  s.add_dependency('http-configuration')
  s.authors     = 'xyzkab'
  s.email       = '0xyzkab@gmail.com'
  s.files       = Dir['{lib}/**/*', '*.md'] & `git ls-files -z`.split("\0")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f)}
  s.homepage    = 'https://github.com/xyzkab/http-repeater'
  s.license     = 'Nonstandard'
end