class Image < ApplicationRecord
  belongs_to :item

  #STATUS = [:new, :published, :hidden]
  def image_url
    "https://www.scarfage.com/image/#{id}/full"
  end
end
