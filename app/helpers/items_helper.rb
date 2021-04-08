module ItemsHelper
  def item_image(image)
    image ? "<img src=#{image.image_url}/>".html_safe : ''
  end
end
