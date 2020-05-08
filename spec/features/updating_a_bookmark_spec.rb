feature 'updating a bookmark' do
  scenario 'user can update a bookmark' do
    bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit('/bookmarks')
    expect(page).to have_link('Google', href: 'http://www.google.com')

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: 'http://www.boogle.com')
    fill_in('title', with: 'Boogle')
    click_button('Submit')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Boogle', href: 'http://www.boogle.com')
  end
end
