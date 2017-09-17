require 'rails_helper'

feature 'Manage task', js: true do
  let!(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }
  # let!(:photo) { create :photo, artist: artist }
  scenario 'add a new song' do
    Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504976966/littlebylisten.wordpress.com__zwvmz6.jpg", artist: artist)

    visit artist_path artist.id

    fill_in 'track', with: 'vvv'
    fill_in 'lyrics', with: 'bbb'
    fill_in 'album', with: 'ccc'
    sleep(3)
    page.execute_script("$('form').submit()")
    sleep(3)
    expect(page).to have_content('vvv')
  end
end


feature 'Manage task', js: true do
  let!(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  scenario 'delete a song' do

    Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504976966/littlebylisten.wordpress.com__zwvmz6.jpg", artist: artist)

    visit artist_path artist.id
    sleep(5)
    page.execute_script("$('button.deleteSong').click()")
    sleep(5)
    expect(page.evaluate_script("$('li.song').length")).to eq 0
  end
end
