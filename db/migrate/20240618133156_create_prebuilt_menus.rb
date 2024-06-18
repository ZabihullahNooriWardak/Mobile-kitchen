class CreatePrebuiltMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :prebuilt_menus do |t|
      t.string :name
      t.decimal :cost
      t.string :image

      t.timestamps
    end
  end
end
