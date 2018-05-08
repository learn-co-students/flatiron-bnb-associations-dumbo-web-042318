class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings
  # has_many :listings, :foreign_key => 'listing_id'
  has_many :neighborhood, :foreign_key => 'neighborhood_id'
end
