require 'bookmark'

describe Bookmark do
  describe "#list" do
    it "stores a list of bookmarks" do
      expect(subject.list).to include("https://google.com")
    end
  end

  describe '#all' do
    it "lists all bookmarks" do
      expect(subject.all).to include("https://google.com")
    end
  end
end
