require File.expand_path '../webcv.rb', __FILE__


run Rack::URLMap.new({
  "/" => Public,
  "/workhistory" => Protected

  })
