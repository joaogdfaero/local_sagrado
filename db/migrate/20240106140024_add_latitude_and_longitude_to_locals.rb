class AddLatitudeAndLongitudeToLocals < ActiveRecord::Migration[7.0]
  def change
    add_column :locals, :latitude, :float
    add_column :locals, :longitude, :float
  end
end
