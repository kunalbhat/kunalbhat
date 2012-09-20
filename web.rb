require 'sinatra'
require 'haml'
require 'sass'

use Rack::Static, :urls => ["/images"], :root => "public"
set :static, true
set :root, File.dirname(__FILE__)

get '/style.css' do
  scss :style
end

get '/' do
  haml :index
end