require 'rake'

spec = Gem::Specification.new do |s| 
  s.name = "Simple Ordered List"
  s.version = "0.0.1"
  s.author = "Rob Partington"
  s.email = "zimpenfish@gmail.com"
  s.homepage = "http://rjp.github.com/simple-ordered-list"
  s.platform = Gem::Platform::RUBY
  s.summary = "Simple Ordered List you can use as a Priority Queue"
  s.files = FileList["{bin,lib}/**/*"].to_a
  s.require_path = "lib"
  s.test_files = FileList["{test}/**/*test.rb"].to_a
  s.has_rdoc = false
end
