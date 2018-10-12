require "./lib/resque/pool/version"

Gem::Specification.new do |s|
  s.name        = "heroku-resque-pool"
  s.version     = Resque::Pool::VERSION
  s.authors     = ["matthew bramfeld",]
  s.email       = ["nick@ekenosen.net"]
  s.homepage    = "http://github.com/mbr84/heroku-resque-pool"
  s.summary     = "quickly and easily fork a pool of resque workers"
  s.description = <<-EOF
    this is just a version of resque-pool that doesn't break when you specify resque's timeout
  EOF

  s.required_ruby_version = '>= 2.0'

  s.add_dependency "resque", "~> 1.22"
  s.add_dependency "rake"
  s.add_development_dependency "rspec",    "~> 2.99"
  s.add_development_dependency "cucumber", "~> 1.2"
  s.add_development_dependency "aruba",    "~> 0.4.11"
  s.add_development_dependency "ronn"
  s.add_development_dependency "mustache", "~> 0.99.8" # 1.0 needs ruby 2.0

  s.files         = %w( README.md Rakefile LICENSE.txt )
  s.files         += Dir.glob("lib/**/*")
  s.files         += Dir.glob("bin/**/*")
  s.files         += Dir.glob("man/**/*")
  s.executables   = 'heroku-resque-pool'
end
