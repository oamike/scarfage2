class User < ApplicationRecord
  has_many :user_items
  has_many :items, through: :user_items
  has_many :owned_items, -> { owned }, class_name: 'UserItem'
  has_many :wish_items, -> { wish }, class_name: 'UserItem'
  has_many :pub_items, -> { visible }, class_name: 'UserItem'
  has_many :trade_items, -> { trade }, class_name: 'UserItem'

  has_many :owned, through: :owned_items, class_name: 'Item', source: :item
  has_many :wish, through: :wish_items, class_name: 'Item', source: :item
  has_many :pub, through: :pub_items, class_name: 'Item', source: :item
  has_many :trade, through: :trade_items, class_name: 'Item', source: :item

  def all_items
    user_items + items
  end
end
