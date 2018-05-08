class EditCheckoutOnReservations < ActiveRecord::Migration
  def up
    change_column :reservations, :checkout, :date
  end
  def down
    change_column :reservations, :checkout, :string
  end
end
