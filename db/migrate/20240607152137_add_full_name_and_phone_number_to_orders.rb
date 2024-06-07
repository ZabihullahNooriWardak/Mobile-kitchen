class AddFullNameAndPhoneNumberToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :full_name, :string
    add_column :orders, :phone_number, :string
  end
end
