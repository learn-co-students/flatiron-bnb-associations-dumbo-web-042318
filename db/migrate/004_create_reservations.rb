class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
    end
  end
end
