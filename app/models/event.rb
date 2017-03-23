class Event < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true

  after_validation :geocode
  after_validation :geocode

  before_save :geocode_endpoints

  after_create_commit { ActionCable.server.broadcast 'events', {message: self.to_json}}

  has_attached_file :photo, :styles => { :medium =>     "300x300#", :thumb => "200x200#" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  geocoded_by :address, :latitude  => :lat, :longitude => :lng
  geocoded_by :end_address, latitude: :end_lat, longitude: :end_lng

private
  #To enable Geocoder to works with multiple locations
  def geocode_endpoints
    if self.address_changed?
      # if implement event-editing, next line must only run when from-address changes
      geocoded = Geocoder.search(self.address).first
      if geocoded
        self.lat = geocoded.latitude
        self.lng = geocoded.longitude
      end
    end
    # Repeat for destination
    if self.end_address_changed?
      # if implement event-editing, next line must only run when to-address changes
      geocoded = Geocoder.search(self.end_address).first
      if geocoded
        self.end_lat = geocoded.latitude
        self.end_lng = geocoded.longitude
      end
    end
  end

end
