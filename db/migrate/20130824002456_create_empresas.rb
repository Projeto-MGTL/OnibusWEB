class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
