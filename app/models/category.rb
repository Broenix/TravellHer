class Category < ApplicationRecord
  has_one_attached :photo
  has_many :spots, dependent: :destroy

  validates :name, presence: true
end
