require 'rails_helper'

feature 'Manage tasks', js: true do
  let!(:artist) { create :artist }
  # let!(:song) { create :song, artist: artist }
  # let!(:photo) { create :photo, artist: artist }
  scenario 'add a new song' do
    Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504976966/littlebylisten.wordpress.com__zwvmz6.jpg", artist: artist)

    # Point your browser towards the todo path
    visit artist_path artist.id

    # Enter description in the text field
    fill_in 'track', with: 'aaa'
    fill_in 'lyrics', with: 'bbb'
    fill_in 'album', with: 'ccc'
    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('aaa')
  end
end
