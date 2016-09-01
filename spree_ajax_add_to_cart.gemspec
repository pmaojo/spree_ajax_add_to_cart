# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ajax_add_to_cart'
  s.version     = '2.0.0'
  s.summary     = 'Spree AJAX Add to Cart extension'
  s.description = 'When the user adds an item to the cart the system will make an Ajax call to add the item to the cart. Once the item has been added the cart details in the header is updated and an alert box displayed informing the user that the item was added.'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Trung Lê'
  s.email     = 'joneslee85@gmail.com'
  s.homepage  = 'http://github.com/joneslee85/spree_ajax_add_to_cart'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.1.0'

end
