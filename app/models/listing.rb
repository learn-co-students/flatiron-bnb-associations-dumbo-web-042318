class Listing < ActiveRecord::Base
    has_many :reservations
    has_many :reviews, :foreign_key => :reservation_id
    has_many :guests, through: :reservations
    belongs_to :host, :class_name => "User"
    belongs_to :neighborhood
end