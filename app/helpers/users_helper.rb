module UsersHelper
  def user_item(item)
    "[#{item.id}] - #{item.name}" if item
  end
end
