require 'rails_helper'

describe "Viewing an Artist" do
  let(:artist) { create :artist }

  it "shows the artist's details" do
    visit artist_path(artist.id)

    expect(page).to have_text(name)
    expect(page).to have_text(age)
    expect(page).to have_text(bio)

  end
end
