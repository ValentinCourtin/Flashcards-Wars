class Item < ApplicationRecord
  has_many :inventories
  has_many :users, through: :inventories
  has_one_attached :photo
  before_destroy :purge_photo

  def purge_picture
    photo.purge
  end
end
