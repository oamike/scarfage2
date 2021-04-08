require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      item_id: "Item",
      integer: "Integer",
      user_id: "User",
      integer: "Integer",
      name: "Name",
      string: "String",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/Integer/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Integer/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Status/)
  end
end
