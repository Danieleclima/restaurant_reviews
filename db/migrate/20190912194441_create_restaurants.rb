class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :description
      t.text :category
      t.text :address

      t.timestamps
    end
  end
end
