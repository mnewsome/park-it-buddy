require 'rails_helper'

RSpec.describe "spaces/new", :type => :view do
  before(:each) do
    assign(:space, Space.new(
      :space_number => "MyString",
      :lot => nil
    ))
  end

  it "renders new space form" do
    render

    assert_select "form[action=?][method=?]", spaces_path, "post" do

      assert_select "input#space_space_number[name=?]", "space[space_number]"

      assert_select "input#space_lot_id[name=?]", "space[lot_id]"
    end
  end
end
