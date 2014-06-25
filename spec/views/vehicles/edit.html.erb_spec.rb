require 'rails_helper'

RSpec.describe "vehicles/edit", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :manufacturer => "MyString",
      :model => "MyString",
      :license_plate => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_manufacturer[name=?]", "vehicle[manufacturer]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"

      assert_select "input#vehicle_license_plate[name=?]", "vehicle[license_plate]"
    end
  end
end
