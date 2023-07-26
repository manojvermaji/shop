class AddForeignKeyToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :order_items, :users, column: :user_id
  end
end
