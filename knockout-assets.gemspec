lib_dir = File.expand_path(File.dirname(__FILE__) + '/lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'knockout/assets'

Gem::Specification.new do |s|
  s.name = 'knockout-assets'
  s.version = KnockoutAssets::VERSION
  s.authors = ['Harry Lascelles']
  s.email = ['harry@harrylascelles.com']
  s.summary = 'Prepares the SHA values of CDN assets for inclusion in templates.'

  s.files = Dir["{app}/**/*"] + ["README.md"]
  s.require_paths = ['lib']

  s.add_dependency 'rails', '~>3'
end