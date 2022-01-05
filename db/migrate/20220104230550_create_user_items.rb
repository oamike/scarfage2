class CreateUserItems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_items do |t|
      t.belongs_to :user
      t.belongs_to :item
      t.integer :own_count
      t.boolean :willtrade
      t.boolean :want
      t.boolean :hidden

      t.timestamps
    end
  end
end
