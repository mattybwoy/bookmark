


feature 'index page content' do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  scenario 'The page prints out hello world' do
      visit('/')
    expect(page).to have_content "Hello world"
  end
end
feature 'bookmark page' do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  scenario 'prints a list of bookmarks' do
      visit('/bookmarks')
    expect(page).to have_content "http://www.test.com"
  end
end