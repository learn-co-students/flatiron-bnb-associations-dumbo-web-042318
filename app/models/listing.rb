class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :listings, :foreign_key => 'neighborhood_id'
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
end
