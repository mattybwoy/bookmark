require 'sinatra/base'
require './lib/bookmarks'

class Bookmark < Sinatra::Base

  get '/' do
    "Hello world"
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new
    erb :bookmarks
  end

    run! if app_file == $0
end