Gem::Specification.new do |s|
  s.name        = 'http_repeater'
  s.version     = '0.0.1'
  s.date        = '2018-09-21'
  s.summary     = 'HttpRepeater is a module inspired by Burpsuite Repeater tool'
  s.description = %q{
    HttpRepeater is a module inspired by Burpsuite Repeater tool
  }
  s.add_dependency('http')
  s.authors     = 'xyzkab'
  s.email       = '0xyzkab@gmail.com'
  s.files       = Dir['{lib}/**/*', '*.md'] & `git ls-files -z`.split("\0")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f)}
  s.homepage    = 'https://github.com/xyzkab/modsec-auditlog'
  s.license     = 'Nonstandard'
end