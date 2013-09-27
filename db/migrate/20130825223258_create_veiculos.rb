class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :marca
      t.string :modelo
      t.string :placa
      t.string :chassi
      t.integer :numerocadeiras
      t.references :empresa

      t.timestamps
    end
    add_index :veiculos, :empresa_id
  end
end
