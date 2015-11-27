Gem::Specification.new do |s|
  s.name            = 'logstash-input-kontur_elk'
  s.version         = '1.1.2'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Pull events from a RabbitMQ exchange."
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = ["Gemfile", "LICENSE", "README.md", "Rakefile", "lib/logstash/inputs/kontur_elk.rb", "lib/logstash/inputs/kontur_elk/march_hare.rb", "logstash-input-kontur_elk.gemspec"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-json'
  s.add_runtime_dependency 'march_hare', ['>= 2.11.0']
  s.add_development_dependency 'logstash-devutils'
end

