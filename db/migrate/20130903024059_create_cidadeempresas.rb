class CreateCidadeempresas < ActiveRecord::Migration
  def change
    create_table :cidadeempresas do |t|
      t.string :nomecidade
      t.string :nomeempresa
      t.references :empresa
      t.references :cidade

      t.timestamps
    end
    add_index :cidadeempresas, :empresa_id
    add_index :cidadeempresas, :cidade_id
  end
end
