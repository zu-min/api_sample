require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!'
end

# rubyのhashをjsonに変換して返す
get '/hoge' do
  {id: 123, name: 'hoge'}.to_json
end

# get パラメーター をHelloのあとにつけて返す
get '/user/:name' do
  "Hello #{params[:name]} !"
end

# request body をそのまま返す
post '/items' do
  request.body
end

