require 'rails_helper'

RSpec.describe "lots/index", :type => :view do
  before(:each) do
    assign(:lots, [
      Lot.create!(
        :name => "Name",
        :number_of_spaces => 1
      ),
      Lot.create!(
        :name => "Name",
        :number_of_spaces => 1
      )
    ])
  end

  it "renders a list of lots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
