class CreateVoisins < ActiveRecord::Migration[6.0]
  def change
    create_table :voisins do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.text :about
      t.boolean :favory

      t.timestamps
    end
  end
end
