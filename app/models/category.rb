class Category < ApplicationRecord
  has_one_attached :photo
  has_many :spots, dependent: :destroy

  validates :name, presence: true

  # def category_image_path()
  #   if self.category =="Restaurants"
  #     "./category/restaurant.png"
  #   end

  #   if self.category =="Bars"
  #     "./category/wine.png"
  #   end

  #   if self.category =="Hostels"
  #     "./category/bunk-bed.png"
  #   end

  #   if self.category =="Volunteering"
  #     "./category/handshake.png"
  #   end

  #   if self.category =="Tours"
  #     "./category/sign-post.png"
  #   end

  #   if self.category =="Clubs"
  #     "./category/party-popper.png"
  #   end

end
