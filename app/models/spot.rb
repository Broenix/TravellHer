class Spot < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
  validates :rating, presence: true
  validates :description, presence: true
end

