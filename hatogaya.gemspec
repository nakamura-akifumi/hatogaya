# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hatogaya"
  spec.version       = "0.1.1"
  spec.authors       = ["Akifumi NAKAMURA"]
  spec.email         = ["tmpz84@gmail.com"]
  spec.description   = %q{print database schema and entity relation}
  spec.summary       = %q{printoutput database schema and entiry relation}
  spec.homepage      = "https://github.com/nakamura-akifumi/hatogaya"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  #spec.add_development_dependency "rake"

	spec.add_dependency("rake")
	spec.add_dependency("ruby-graphviz", "~> 1.0")
	spec.add_dependency("axlsx")

end
