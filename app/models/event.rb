class Event < ApplicationRecord
  belongs_to :spot
  has_many :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
end
