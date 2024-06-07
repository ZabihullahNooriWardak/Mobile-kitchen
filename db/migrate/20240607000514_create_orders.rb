class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :guests_number
      t.date :date
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
