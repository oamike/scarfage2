module ApplicationHelper
  def image_render(image_url)
    image_url ? image_tag(image_url, class: 'scarfimage') : ''
  end

end
