feature 'bookmark page' do
  before(:each) do
    test_database('empty') 
    test_database('setup')
  end
  scenario 'prints a list of bookmarks' do
      visit('/')
      click_button "See Bookmarks"
    expect(page).to have_content "test"
  end
  feature 'create bookmark' do
    scenario 'Add bookmark and view added bookmark' do
      visit('/')
        click_button "Add Bookmarks"
        fill_in('url', with: 'http://www.anothertest.com')
        fill_in('title', with: 'anothertest')
        click_button "add"
        click_button "See Bookmarks"
          expect(page).to have_link 'anothertest'
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
