# coding: utf-8
require './lib/rubinius/console/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-console"
  spec.version       = Rubinius::Console::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.summary       = %q{Interactive console for the Rubinius language platform.}
  spec.description   = %q{The Rubinius console is a command line interface to the
Rubinius language platform. It combines common REPL features found in IRB with
commands to inspect a running system typical of a debugger.}
  spec.homepage      = "https://github.com/rubinius/rubinius-console"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_dependency "redcard", "~> 1.1"
end
