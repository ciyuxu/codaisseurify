require "rails_helper"

describe "home page" do
  let!(:artist) { create :artist }

  it "renders the artist" do
    visit root_path
    expect(page).to have_content artist.name
  end
end
