class Song < ApplicationRecord
    belongs_to :artist

    validates :track, presence: true

    validates :lyrics, presence: true
    validates :album, presence: true
end
