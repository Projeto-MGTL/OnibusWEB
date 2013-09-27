class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :hora
      t.string :data
      t.string :nome

      t.timestamps
    end
  end
end
