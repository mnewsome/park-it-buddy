require 'rails_helper'

RSpec.describe "vehicles/index", :type => :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :manufacturer => "Manufacturer",
        :model => "Model",
        :license_plate => "License Plate"
      ),
      Vehicle.create!(
        :manufacturer => "Manufacturer",
        :model => "Model",
        :license_plate => "License Plate"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
  end
end
