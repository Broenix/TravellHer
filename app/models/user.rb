class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookmarks, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :age, presence: true
end
