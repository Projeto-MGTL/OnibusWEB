class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :data
      t.string :hora
      t.string :comentario
      t.references :usuario
      t.references :linha

      t.timestamps
    end
    add_index :comentarios, :usuario_id
    add_index :comentarios, :linha_id
  end
end
