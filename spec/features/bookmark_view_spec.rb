feature 'Bookmark View' do
  scenario 'when visiting the homepage it displays name' do
  visit '/'
  expect(page).to have_content 'Bookmark Manager'
  end

end
