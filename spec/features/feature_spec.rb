feature 'index page content' do
  scenario 'The page prints out hello world' do
      visit('/')
    expect(page).to have_content "Hello world"
  end
end