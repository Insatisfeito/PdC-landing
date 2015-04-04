require 'rubygems'
require 'sinatra'


get '/' do
  erb :index
end


post '/' do
  open('mailsnewsletter.txt', 'a') { |f|
    f.puts params[:email]+"\n"
  }
  redirect "/?email="+params[:email]
end
