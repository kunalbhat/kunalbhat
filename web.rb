require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

get '/style.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  scss :style
end

get '/' do
  haml :index
end