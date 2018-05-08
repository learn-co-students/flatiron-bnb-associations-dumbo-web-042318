class Listing < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood
  has_many :reviews, through: :reservations
  has_many :reservations, :foreign_key => "listing_id"

  def guests
    Reservation.all.select do |reservation|
      reservation.listing == self
    end.map { |entry| entry.guest}
  end

end
