require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!'
end

# get パラメーター をHelloのあとにつけて返す
get '/user/:name' do
  "Hello #{params[:name]}"
end

get '/hoge' do
  {id: 123, name: 'hoge'}.to_json
end

# request body をそのまま返す
post '/items' do
  request.body
end

