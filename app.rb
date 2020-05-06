require 'Sinatra'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb:'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

run! if app_file == $0

end
