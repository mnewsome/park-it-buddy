require 'rails_helper'

RSpec.describe "lots/edit", :type => :view do
  before(:each) do
    @lot = assign(:lot, Lot.create!(
      :name => "MyString",
      :number_of_spaces => 1
    ))
  end

  it "renders the edit lot form" do
    render

    assert_select "form[action=?][method=?]", lot_path(@lot), "post" do

      assert_select "input#lot_name[name=?]", "lot[name]"

      assert_select "input#lot_number_of_spaces[name=?]", "lot[number_of_spaces]"
    end
  end
end
