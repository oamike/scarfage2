class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
