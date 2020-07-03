require './lib/bookmarks'

describe Bookmarks do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  describe 'Lists all bookmarks' do
    it 'Displays list of all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks[0].url).to include("http://www.test.com")
    end
  end
    describe 'Adds a bookmarks' do
    it 'adds a bookmark to the bookmark list' do
      Bookmarks.add("msn", "www.msn.co.uk")
      expect(Bookmarks.all.last.url).to eq("www.msn.co.uk")
    end
  end
end
