class RemoveTipoFromLocals < ActiveRecord::Migration[7.0]
  def change
    remove_column :locals, :tipo, :string
  end
end
