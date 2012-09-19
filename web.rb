require 'sinatra'
require 'haml'
require 'sass'

get '/style.css' do
  scss :style
end

get '/' do
  haml :index
end