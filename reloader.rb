require 'sinatra/base'
require 'yaml'

class Reloader < Sinatra::Base
  config = YAML.load_file('config.yml')
  get "/#{config["url"]}" do
    system("./#{config["script"]}")
    "Finished generating site"
  end
end
