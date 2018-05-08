class City < ActiveRecord::Base
  has_many :neighborhoods, :foreign_key => "city_id", :class_name => Neighborhood
  has_many :listings, through: :neighborhoods

end
