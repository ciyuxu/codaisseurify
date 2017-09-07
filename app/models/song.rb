class Song < ApplicationRecord
    belongs_to :artist

    validate :name, presence: true
    validate :album, presence: true
end
