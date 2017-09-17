require 'rails_helper'

describe "Navigating pages" do


  let(:artist) { create :artist }
  let(:song) { create :song, artist: artist }

  it "allows navigation from the artist show page to the artist index page" do
  visit artist_path(artist.id)

  click_link "All Artists"

  expect(current_path).to eq(root_path)
  end


end
