feature 'delete bookmark' do
  scenario 'user can delete bookmark' do
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit('/bookmarks')
    first('.bookmark').click_button('Delete')
    expect(page).not_to have_link('Google', href: "http://www.google.com")
  end
end
