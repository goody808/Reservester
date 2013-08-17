class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :phone_number, :state, :zip_code, :image, :pdf_menu, :category_ids, :category_tokens, :latitude, :longitude
	geocoded_by :full_street_address
  after_validation :geocode
  validates :name, presence: true
	validates :owner_id, presence: true
  mount_uploader :image, ImageUploader
  mount_uploader :pdf_menu, PdfMenuUploader
  belongs_to :owner
  has_many :reservations
  has_and_belongs_to_many :category
  accepts_nested_attributes_for :reservations
  attr_reader :category_tokens

  def category_tokens=(ids)
  	self.category_ids = ids.split(",")
  end

  def full_street_address
    str = self.address + ", " + self.city + ", " + self.state
  end

end
