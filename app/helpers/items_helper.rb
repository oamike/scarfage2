module ItemsHelper
  def image_render(image_url)
    image_url ? image_tag(image_url, class: 'scarfimage') : ''
  end

  def item_attributes(item)
    res = ""
    att = @user_items.where(item_id: item.id).first
    if att
      res += "own:#{att.own_count} " if att.own_count > 0
      res += "trade " if att.willtrade
      res += "want " if att.want
      res += "hide " if att.hidden
    end
    res
  end
end
