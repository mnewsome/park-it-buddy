require 'rails_helper'

RSpec.describe "spaces/index", :type => :view do
  before(:each) do
    assign(:spaces, [
      Space.create!(
        :space_number => "Space Number",
        :lot => nil
      ),
      Space.create!(
        :space_number => "Space Number",
        :lot => nil
      )
    ])
  end

  it "renders a list of spaces" do
    render
    assert_select "tr>td", :text => "Space Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
