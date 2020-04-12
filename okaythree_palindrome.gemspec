require_relative 'lib/okaythree_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "okaythree_palindrome"
  spec.version       = OkaythreePalindrome::VERSION
  spec.authors       = ["Leo Mendoza"]
  spec.email         = ["leo@okaythree.com"]

  spec.summary       = %q{Detects palindrome}
  spec.description   = %q{Palindrome gem exercise in Learn Enough Ruby Chapter 8}
  spec.homepage      = "https://github.com/okaythree/okaythree_palindrome"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/okaythree/okaythree_palindrome"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/okaythree/okaythree_palindrome"
  spec.metadata["changelog_uri"] = "https://github.com/okaythree/okaythree_palindrome"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
