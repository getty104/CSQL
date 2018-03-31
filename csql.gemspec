
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csql/version"

Gem::Specification.new do |spec|
  spec.name          = "csql"
  spec.version       = Csql::VERSION
  spec.authors       = ["getty104"]
  spec.email         = ["hayabusatoshihumi@gmail.com"]

  spec.summary       = %q{this is a library of operating csv by SQL queries.}
  spec.description   = %q{this is a library of operating csv by SQL queries. \n you have to install https://github.com/harelba/q/}
  spec.homepage      = "https://github.com/getty104/CSQL"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sql-parser"
end
