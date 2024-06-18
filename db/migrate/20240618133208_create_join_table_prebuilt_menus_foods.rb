class CreateJoinTablePrebuiltMenusFoods < ActiveRecord::Migration[7.1]

    def change
      create_join_table :prebuilt_menus, :foods do |t|
        t.index :prebuilt_menu_id
        t.index :food_id
      end
    end
end
