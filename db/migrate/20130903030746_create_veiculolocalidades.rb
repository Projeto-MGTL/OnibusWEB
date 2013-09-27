class CreateVeiculolocalidades < ActiveRecord::Migration
  def change
    create_table :veiculolocalidades do |t|
      t.string :placa
      t.string :data
      t.string :hora
      t.string :nomelinha
      t.string :nomelocalidade
      t.references :localidadelinha
      t.references :veiculolinha

      t.timestamps
    end
    add_index :veiculolocalidades, :localidadelinha_id
    add_index :veiculolocalidades, :veiculolinha_id
  end
end
