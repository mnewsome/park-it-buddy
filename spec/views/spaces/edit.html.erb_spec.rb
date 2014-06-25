require 'rails_helper'

RSpec.describe "spaces/edit", :type => :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      :space_number => "MyString",
      :lot => nil
    ))
  end

  it "renders the edit space form" do
    render

    assert_select "form[action=?][method=?]", space_path(@space), "post" do

      assert_select "input#space_space_number[name=?]", "space[space_number]"

      assert_select "input#space_lot_id[name=?]", "space[lot_id]"
    end
  end
end
