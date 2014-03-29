require 'sinatra'
require 'yaml'

config = YAML.load_file('config.yml')
get "/#{config["url"]}" do
  system("./#{config["script"]}")
end
