class CreateLinhaempresas < ActiveRecord::Migration
  def change
    create_table :linhaempresas do |t|
      t.string :nomelinha
      t.string :nomeempresa
      t.references :linha
      t.references :empresa

      t.timestamps
    end
    add_index :linhaempresas, :linha_id
    add_index :linhaempresas, :empresa_id
  end
end
