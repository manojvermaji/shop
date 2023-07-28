class RemoveColumnNameFromOrderItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :order_items, :user_id, :integer
  end
end
