class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :category
      t.decimal :price
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
