module ItemsHelper
  def item_attributes(item)
    res = ""
    att = item.user_data
    if att
      res += "own:#{att.own_count} " if att.own_count > 0
      res += "trade " if att.willtrade
      res += "want " if att.want
      res += "hide " if att.hidden
    end
    res
  end

  def own_count(item)
    att = item.user_data
    if att && att.own_count > 0
      "#{att.own_count}"
    else
      nil
    end
  end

    def trade(item)
      att = item.user_data
      if att
        att.willtrade ? "#{att.willtrade}" : nil
      end
    end

    def want(item)
      att = item.user_data
      if att
        att.want ? "#{att.want}" : nil
      end
    end

      def hide(item)
        att = item.user_data
        if att
          att.hidden ? "#{att.hidden}" : nil
        end
      end
end
