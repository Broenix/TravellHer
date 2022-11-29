class Spot < ApplicationRecord
  belongs_to :category
  has_many :events, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
  validates :rating, presence: true
  validates :photo_url, presence: true
end
