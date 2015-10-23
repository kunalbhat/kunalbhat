Bundler.require :web
Bundler.require :development if development?

get '/stylesheet.css' do
  scss :stylesheet
end

get '/' do
  haml :index
end

not_found do
  haml :'404'
end
