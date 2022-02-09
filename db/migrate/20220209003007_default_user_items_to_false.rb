class DefaultUserItemsToFalse < ActiveRecord::Migration[6.1]
  def change
    change_column_default :user_items, :own_count, 0
    change_column_default :user_items, :willtrade, false
    change_column_default :user_items, :want, false
    change_column_default :user_items, :hidden, false
  end
end
