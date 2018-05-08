class EditCheckinOnReservations < ActiveRecord::Migration
  def up
    change_column :reservations, :checkin, :date
  end
  def down
    change_column :reservations, :checkin, :string
  end
end
