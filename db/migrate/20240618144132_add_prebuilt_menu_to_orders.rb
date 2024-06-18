class AddPrebuiltMenuToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :prebuilt_menu, foreign_key: true
  end
end
