module ItemsHelper
  def item_image(image)
    # image ? "<img src=#{image.image_url}/>".html_safe : ''
    if image
      "Image #{image.id} #{image.name}"
    end
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
