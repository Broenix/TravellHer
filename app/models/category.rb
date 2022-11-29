class Category < ApplicationRecord
  has_many :spots, dependent: :destroy

  validates :name, presence: true
  validates :photo_url, presence: true
end
