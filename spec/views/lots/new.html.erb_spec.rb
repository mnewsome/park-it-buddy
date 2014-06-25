require 'rails_helper'

RSpec.describe "lots/new", :type => :view do
  before(:each) do
    assign(:lot, Lot.new(
      :name => "MyString",
      :number_of_spaces => 1
    ))
  end

  it "renders new lot form" do
    render

    assert_select "form[action=?][method=?]", lots_path, "post" do

      assert_select "input#lot_name[name=?]", "lot[name]"

      assert_select "input#lot_number_of_spaces[name=?]", "lot[number_of_spaces]"
    end
  end
end
