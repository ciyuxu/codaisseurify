class Song < ApplicationRecord
    belongs_to :artist

    validates :track, presence: true
    
    # validate :name, presence: true
    # validate :album, presence: true
end
