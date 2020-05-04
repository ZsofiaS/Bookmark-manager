require 'Sinatra'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/bookmarks' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @list = Bookmark.new.list
    erb(:bookmarks)
  end

run! if app_file == $0

end
