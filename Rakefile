require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('integrity-irc', '1.0.1') do |e|
  e.summary         = "IRC notifier for the Integrity continuous integration server"
  e.description     = "Easily let Integrity message IRC after each build"
  e.url             = "http://integrityapp.com"
  e.author          = "Espen Volden"
  e.email           = "voldern@hoeggen.net"
  e.has_rdoc        = false
  e.development_dependencies = []
  e.runtime_dependencies = ['foca-integrity', 'mysql']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

require 'spec/rake/spectask'

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ["--color", "--format", "progress"]
  t.spec_files = Dir['spec/**/*_spec.rb'].sort
  t.libs = ['lib']
  t.rcov = false
end
