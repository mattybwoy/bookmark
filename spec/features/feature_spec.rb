feature 'bookmark page' do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  xscenario 'prints a list of bookmarks' do
      visit('/')
      click_button "See Bookmarks"
    expect(page).to have_content "http://www.test.com"
  end
  feature 'create bookmark' do
    xscenario 'Add bookmark and view added bookmark' do
      visit('/')
        click_button "Add Bookmarks"
        fill_in('bookmark_url', with: 'http://www.anothertest.com')
        click_button "add"
        click_button "See Bookmarks"
          expect(page).to have_content 'http://www.anothertest.com'
        end
      end
      feature 'create title' do
      scenario 'Add title with url' do
      visit('/')
        click_button "Add Bookmarks"
        fill_in('title', with: 'anothertest')
        click_button "add"
        click_button "See Bookmarks"
          expect(page).to have_content 'anothertest'
      end
    end
  end
