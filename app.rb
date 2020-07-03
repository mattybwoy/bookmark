require 'sinatra/base'
require './lib/bookmarks'
require 'pg'

class Bookmark < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  post '/add_bookmark' do
    Bookmarks.add(params[:title], params[:url])
    redirect '/'
  end

  get '/add' do
    erb :add
  end

    run! if app_file == $0
end