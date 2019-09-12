class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.datetime :date
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
