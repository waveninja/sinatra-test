require 'rubygems'
require 'sinatra'

get '/' do
  erb :home
end

post '/shorten' do
  params.inspect 
end
