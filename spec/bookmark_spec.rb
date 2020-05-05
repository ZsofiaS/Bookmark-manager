require 'bookmark'
require 'pg'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.askjeeves.com")
      expect(bookmarks).to include("http://www.twitter.com")
    end
  end
end
