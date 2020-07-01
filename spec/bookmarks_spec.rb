require './lib/bookmarks'

describe Bookmarks do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  describe 'Lists all bookmarks' do
    xit 'Displays list of all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("http://www.test.com")
    end
  end
end