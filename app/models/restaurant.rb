class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :phone_number, :state, :zip_code, :image, :pdf_menu, :catagory_ids, :catagory_tokens
	validates :name, presence: true
	validates :owner_id, presence: true
  mount_uploader :image, ImageUploader
  mount_uploader :pdf_menu, PdfMenuUploader
  belongs_to :owner
  has_many :reservations
  has_and_belongs_to_many :catagory
  accepts_nested_attributes_for :reservations
  attr_reader :catagory_tokens

  def catagory_tokens=(ids)
  	self.catagory_ids = ids.split(",")
  end

end
