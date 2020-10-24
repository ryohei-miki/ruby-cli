require_relative 'lib/str_convert_utils/version'

Gem::Specification.new do |spec|
  spec.name          = "str_convert_utils"
  spec.version       = StrConvertUtils::VERSION
  spec.authors       = ["RyoheiMiki"]
  spec.email         = ["n2i.miki.r@gmail.com"]

  spec.summary       = "string convert utilities"
  spec.description   = "string convert utilities (e.g. snake, camelize, etc.)"
  spec.homepage      = "https://github.com/akisame338/str_convert_utils"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "thor"
end
