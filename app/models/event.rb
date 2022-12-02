class Event < ApplicationRecord
  has_one_attached :photo
  belongs_to :spot
  has_many :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
  validates :creator, presence: true
end
