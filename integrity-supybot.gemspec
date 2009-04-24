# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{integrity-supybot}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Espen Volden"]
  s.date = %q{2009-04-24}
  s.description = %q{Easily let Integrity message IRC after each build}
  s.email = %q{voldern@hoeggen.net}
  s.extra_rdoc_files = ["lib/notifier/config.haml", "lib/notifier/supybot.rb", "README"]
  s.files = ["lib/notifier/config.haml", "lib/notifier/supybot.rb", "Rakefile", "Manifest", "README", "integrity-supybot.gemspec"]
  s.homepage = %q{http://integrityapp.com}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Integrity-supybot", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{integrity-supybot}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Supybot IRC notifier for the Integrity continuous integration server}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<foca-integrity>, [">= 0"])
      s.add_runtime_dependency(%q<mysql>, [">= 0"])
    else
      s.add_dependency(%q<foca-integrity>, [">= 0"])
      s.add_dependency(%q<mysql>, [">= 0"])
    end
  else
    s.add_dependency(%q<foca-integrity>, [">= 0"])
    s.add_dependency(%q<mysql>, [">= 0"])
  end
end
