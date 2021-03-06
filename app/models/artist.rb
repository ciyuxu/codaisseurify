class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_one :photo, dependent: :destroy

    validates :name, presence: true
    validates :age, presence: true
    validates :bio, presence: true
end
