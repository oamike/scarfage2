class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  scope :owned, -> { where.not own_count: 0 }
  scope :hidden, -> { where(:hidden => true) }
  scope :visible, -> { where("own_count > ? AND hidden = ?", 0, false) }
  scope :wish, -> { where :want => true }
  scope :trade, -> { where :willtrade => true }
end
