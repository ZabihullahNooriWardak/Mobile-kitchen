class CreateUserDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :user_details do |t|
      t.references :user, null: false, foreign_key: true
      t.string :phone_number
      t.boolean :is_admin
      t.string :name
      t.string :last_name

      t.timestamps
    end
  end
end
