class Sale < ApplicationRecord
  #lines below added for geocoder

  geocoded_by :address
  after_validation :geocode, :if => :street_changed?
  #ends geocoder
  belongs_to :user
  has_many :items, :dependent => :destroy

  validates :street, :city, :state, :zip, :date, :time, :description, presence: true

  resourcify

  # added below -------------------
  #
  # accepts_nested_attributes_for :items,
  # allow_destroy: true,
  # :reject_if => proc { |att| att[:item_name].blank? && attr[:item_description].blank? }

end
