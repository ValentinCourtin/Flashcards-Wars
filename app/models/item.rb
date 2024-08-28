class Item < ApplicationRecord
  has_many :inventories
  has_many :users, through: :inventories, dependent: :destroy
  has_one_attached :photo
  before_destroy :purge_photo

  def purge_photo
    photo.purge
  end

  def class_name
    name.split.join("_").downcase
  end
end
