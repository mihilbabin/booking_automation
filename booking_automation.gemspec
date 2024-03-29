
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'booking_automation/version'

Gem::Specification.new do |spec|
  spec.name          = 'booking_automation'
  spec.version       = BookingAutomation::VERSION
  spec.authors       = ['Michael Babin']
  spec.email         = ['michaelbabin.eu@gmail.com']

  spec.summary       = %q{Booking Automation API}
  spec.description   = %q{Bindings for BookingAutomation.com API}
  spec.homepage      = 'https://github.com/mihilbabin/booking_automation'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = "#{spec.homepage}/CHANGELOG.md"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Development dependencies
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.17.0'
  spec.add_development_dependency 'webmock', '~> 3.6'

  # Dependencies
  spec.add_dependency 'httparty', '~> 0.17.0'
  spec.add_dependency 'nokogiri', '~> 1.10'
  spec.add_dependency 'oj', '~> 3.7'
end
