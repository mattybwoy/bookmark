feature 'bookmark page' do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  scenario 'prints a list of bookmarks' do
      visit('/')
      click_button "See Bookmarks"
    expect(page).to have_content "http://www.test.com"
  end
  feature 'create bookmark' do
    scenario 'Add bookmark and view added bookmark' do
      visit('/')
        click_button "Add Bookmarks"
        fill_in('bookmark_url', with: 'http://www.anothertest.com') 
        click_button "add"
        click_button "See Bookmarks"
          expect(page).to have_content 'http://www.anothertest.com'
        end
      end
    end
