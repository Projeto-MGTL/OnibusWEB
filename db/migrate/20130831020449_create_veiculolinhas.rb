class CreateVeiculolinhas < ActiveRecord::Migration
  def change
    create_table :veiculolinhas do |t|
      t.references :veiculo
      t.references :linha
      t.string :nomelinha
      t.string :placa

      t.timestamps
    end
    add_index :veiculolinhas, :veiculo_id
    add_index :veiculolinhas, :linha_id
  end
end
