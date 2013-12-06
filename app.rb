Bundler.require :web
Bundler.require :development if development?

get '/stylesheet.css' do
  scss :stylesheet
end

get '/' do
  haml :index
end

get '/blog' do
  haml :blog
end

get '/blog/getting-larger-pictures-of-an-rdio-user' do
  haml :'getting-larger-pictures-of-an-rdio-user'
end

not_found do
  haml :'404'
end
