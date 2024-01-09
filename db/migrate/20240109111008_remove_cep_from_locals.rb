class RemoveCepFromLocals < ActiveRecord::Migration[6.0]
  def change
    remove_column :locals, :cep, :string
  end
end
