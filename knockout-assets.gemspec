lib_dir = File.expand_path(File.dirname(__FILE__) + '/lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'knockout/assets/version'

Gem::Specification.new do |s|
  s.name = 'knockout-assets'
  s.version = KnockoutAssets::VERSION
  s.authors = ['Harry Lascelles']
  s.email = ['harry@harrylascelles.com']
  s.summary = 'Prepares the SHA values of CDN assets for inclusion in templates.'
  s.description = 'Prepares the SHA values of CDN assets in a JS hash. Knockout templates can then refer to them without being rendered by erb or haml every time.'
  s.homepage = 'https://github.com/hlascelles/knockout-assets'

  s.files = Dir["{app,lib}/**/*"] + ["README.md"]
  s.require_paths = ['lib']

  s.add_dependency 'rails'
end