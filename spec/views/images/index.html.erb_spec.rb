require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        item_id: "Item",
        integer: "Integer",
        user_id: "User",
        integer: "Integer",
        name: "Name",
        string: "String",
        status: "Status"
      ),
      Image.create!(
        item_id: "Item",
        integer: "Integer",
        user_id: "User",
        integer: "Integer",
        name: "Name",
        string: "String",
        status: "Status"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", text: "Item".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
    assert_select "tr>td", text: "User".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "String".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
