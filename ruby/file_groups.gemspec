
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "file_groups"

Gem::Specification.new do |spec|
  spec.name          = "file_groups"
  spec.version       = FileGroups::VERSION
  spec.authors       = ["Skye Shaw"]
  spec.email         = ["skye.shaw@gmail.com"]

  spec.summary       = %q{File extensions and MIME types, grouped by application and type}
  spec.description   = %q{File extensions and MIME types, grouped by application and type. Useful when you need to process or restrict processing to certain types of files.}
  spec.homepage      = "https://github.com/sshaw/file_groups/tree/master/ruby"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|template.erb)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata      = {
    "changelog_uri" => "https://github.com/sshaw/file_groups/blob/master/Changes",
    "bug_tracker_uri" => "https://github.com/sshaw/file_groups/issues",
    "documentation_uri" => "http://rdoc.info/gems/file_groups",
    "source_code_uri"  => "https://github.com/sshaw/file_groups",
  }

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
