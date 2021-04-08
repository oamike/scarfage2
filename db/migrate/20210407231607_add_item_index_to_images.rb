class AddItemIndexToImages < ActiveRecord::Migration[6.1]
  def change
    add_index :images, :item_id
    add_index :images, :user_id
  end
end
