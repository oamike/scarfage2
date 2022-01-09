class Image < ApplicationRecord
  belongs_to :item

  # STATUS = [:new, :published, :hidden]

  def image_url
    "http://scarfdom.com/images/#{id}.jpg"
  end
end
