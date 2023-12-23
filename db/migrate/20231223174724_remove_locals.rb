class RemoveLocals < ActiveRecord::Migration[6.0]
  def change
    drop_table :locals
  end
end

