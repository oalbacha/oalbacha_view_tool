
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "oalbacha_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "oalbacha_view_tool"
  spec.version       = OalbachaViewTool::VERSION
  spec.authors       = ["Omar Albacha"]
  spec.email         = ["oalbacha@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications we use.}
  spec.description   = %q{Provides HTML generated data to our Rails applications.}
  spec.homepage      = "http://www.oalbacha.com"
  spec.license      = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
