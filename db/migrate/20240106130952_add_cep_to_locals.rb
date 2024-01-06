class AddCepToLocals < ActiveRecord::Migration[6.0]
  def change
    add_column :locals, :cep, :string
  end
end
