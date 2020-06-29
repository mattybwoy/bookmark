feature 'index page content' do
  scenario 'The page prints out hello world' do
      visit('/')
    expect(page).to have_content "Hello world"
  end
end
feature 'bookmark page' do
  scenario 'prints a list of bookmarks' do
      visit('/bookmarks')
    expect(page).to have_content "www.cats.com"
  end
end