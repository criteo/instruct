lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "instruct/version"

Gem::Specification.new do |spec|
  spec.name = "instruct"
  spec.version = Instruct::VERSION
  spec.authors = ["Titouan Chary"]
  spec.email = ["t.chary@criteo.com"]

  spec.summary = "Instruct gives the possibility to users to tests their infrastructure"
  spec.description = "INfraSTRUcture Confidency with Tests"
  spec.homepage = "https://github.com/criteo/instruct.git"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f)}
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "thor"
end
