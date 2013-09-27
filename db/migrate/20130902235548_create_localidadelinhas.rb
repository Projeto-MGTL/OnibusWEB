class CreateLocalidadelinhas < ActiveRecord::Migration
  def change
    create_table :localidadelinhas do |t|
      t.string :nomelocalidade
      t.string :nomelinha
      t.references :linha
      t.references :localidade

      t.timestamps
    end
    add_index :localidadelinhas, :linha_id
    add_index :localidadelinhas, :localidade_id
  end
end
