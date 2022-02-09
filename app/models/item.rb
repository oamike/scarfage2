class Item < ApplicationRecord
  has_many :images


  acts_as_taggable_on :tags
  acts_as_taggable_on :sport, # soccer, rugby, football, basketball
    :league, # MLS, EPL, SerieA
    :team, # Portland Timbers, AJAX,
    :dated, # 2013, 2019
    :source, # supporter-made, NPO, FO, adidas
    :designer, # names
    :group, # timbers-army, TANA, TA:CO, desert-corps
    :section, # 104, 103, 106,
    :manufacture, # SportsScarf,
    :number_made # 50, 100, 300

  def user_data
    return nil unless User.current
    UserItem.where(item_id: id, user_id: User.current.id).first
  end
end
