require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:track) }
    it { is_expected.to validate_presence_of(:lyrics) }
    it { is_expected.to validate_presence_of(:album) }
  end

  describe "association with artist" do
    let(:artist) { create :artist }
     it { is_expected.to belong_to :artist}
    end

end
