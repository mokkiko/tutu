class Route < ApplicationRecord

  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes    
  validates :name, presence: true
  
  before_validation :set_route_name

  private

  def set_route_name
 #   self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}" 
   self.name ||= "rr4dd" 
end





end
