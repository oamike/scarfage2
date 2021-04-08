require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      item_id: "MyString",
      integer: "MyString",
      user_id: "MyString",
      integer: "MyString",
      name: "MyString",
      string: "MyString",
      status: "MyString"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input[name=?]", "image[item_id]"

      assert_select "input[name=?]", "image[integer]"

      assert_select "input[name=?]", "image[user_id]"

      assert_select "input[name=?]", "image[integer]"

      assert_select "input[name=?]", "image[name]"

      assert_select "input[name=?]", "image[string]"

      assert_select "input[name=?]", "image[status]"
    end
  end
end
