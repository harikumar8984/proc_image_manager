
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prog_image_manager/version"

Gem::Specification.new do |spec|
  spec.name          = "prog_image_manager"
  spec.version       = ProgImageManager::VERSION
  spec.authors       = ["Hari Kumar"]
  spec.email         = ["harikumar8984@gmail.com"]

  spec.summary       = %q{Abstract class}
  spec.description   = %q{To share common clasees between prog image multipe microservices.}
  spec.homepage      = "https://www.progimage.com/"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.files = ['lib/prog_image_manager.rb', *Dir.glob('lib/**/*')]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  
  


  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
