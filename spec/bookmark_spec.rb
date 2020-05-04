require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      
      expect(bookmarks).to include("https://www.bing.com")
      expect(bookmarks).to include("https://www.google.com")
    end
  end
end
