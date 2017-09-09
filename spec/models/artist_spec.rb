require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:age) }
    it { is_expected.to validate_presence_of(:bio) }
  end

  describe "has many songs" do
    let!(:artist) { create :artist }
    let!(:song) { create :song, artist: artist}
     it { is_expected.to have_many :songs}
  end

  # describe "association with songs" do
  #   let(:artist) { create :artist }
  #   let!(:song) { create :song, artist: artist }
  #     it "delete its associated songs" do
  #     expect { artist.destroy }.to change(Song, :count).by(-1)
  #     end
  # end
end
