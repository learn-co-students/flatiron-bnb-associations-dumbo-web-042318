class Reservation < ActiveRecord::Base
  has_many :reviews
  belongs_to :guest, :class_name => "User"
  belongs_to :listing
    # listing
    # belongs_to :host, :class_name => "User"
    # # user
    # has_many :listings, :foreign_key => 'host_id'

    #belongs_to :guest, :foreign_key => :trip_id
end
