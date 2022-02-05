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

  def own_count(item)
    att = @user_items.where(item_id: item.id).first
    if att && att.own_count > 0
      "#{att.own_count}"
    else
      nil
    end
  end

    def trade(item)
      att = @user_items.where(item_id: item.id).first
      if att
        att.willtrade ? "#{att.willtrade}" : nil
      end
    end

    def want(item)
      att = @user_items.where(item_id: item.id).first
      if att
        att.want ? "#{att.want}" : nil
      end
    end

      def hide(item)
        att = @user_items.where(item_id: item.id).first
        if att
          att.hidden ? "#{att.hidden}" : nil
        end
      end
end
