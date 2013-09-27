class CreateLinhas < ActiveRecord::Migration
  def change
    create_table :linhas do |t|
      t.integer :numero
      t.string :nome
      t.string :horario

      t.timestamps
    end
  end
end
