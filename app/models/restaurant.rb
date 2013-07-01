class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :phone_number, :state, :zip_code, :image, :pdf_menu
  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
