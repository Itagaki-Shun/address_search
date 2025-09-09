class Location < ApplicationRecord
  validates :latitude, :longitude, presence: true
  reverse_geocoded_by :address, latitude: :latitude, longitude: :longitude
  before_save :get_address

  def get_address
    results = Geocoder.search([ self.latitude, self.longitude ])
    self.address = results.first.address
  end
end
