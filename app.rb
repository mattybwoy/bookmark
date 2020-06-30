require 'sinatra/base'
require './lib/bookmarks'
require 'pg'

class Bookmark < Sinatra::Base

  get '/' do
    "Hello world"
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    p "string"
    p @bookmarks
    erb :bookmarks
  end

    run! if app_file == $0
end