class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  belongs_to :user
  belongs_to :spot

  validates :comment, presence: true
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
