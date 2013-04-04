require 'coffee-script'
require 'haml'
require 'sass'
require 'sinatra'
require 'thin'

use Rack::Static, :urls => ['/images'], :root => 'public'

get '/style.css' do
  scss :style
end

get '/' do
  haml :index
end

get '/work' do
  haml :work
end

not_found do
  haml :'404'
end
