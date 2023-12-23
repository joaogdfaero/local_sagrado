class CreateLocals < ActiveRecord::Migration[7.0]
  def change
    create_table :locals do |t|
      t.string :nome
      t.string :localizacao
      t.string :religiao_denominacao
      t.string :tipo
      t.text :descricao
      t.text :eventos
      t.string :contato

      t.timestamps
    end
  end
end
