class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end
