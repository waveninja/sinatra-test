$LOAD_PATH << File.join(Dir.getwd, 'lib')

require 'rubygems'
require 'sinatra'
require 'shorten'

before do
  @shorten = Shortener.load
end

get '/' do
  erb :home
end

post '/shorten' do
  url = @shorten.shorten(params['url])
  redirect "/info/#{url.hash}"
end
