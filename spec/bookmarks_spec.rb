require './lib/bookmarks'

describe Bookmarks do
  describe 'Lists all bookmarks' do
    it 'Displays list of all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end