require 'bundler'
Bundler.require

get '/style.css' do
  scss :style
end

get '/' do
  haml :index
end

get '/' do
  haml :picks
end

not_found do
  haml :'404'
end
