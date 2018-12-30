require File.expand_path '../public.rb', __FILE__
require File.expand_path '../protected.rb', __FILE__
require File.expand_path '../app.rb', __FILE__

run Rack::URLMap.new({
  "/" => Public,
  "/private" => Protected
  })
