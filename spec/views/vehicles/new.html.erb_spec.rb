require 'rails_helper'

RSpec.describe "vehicles/new", :type => :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
      :manufacturer => "MyString",
      :model => "MyString",
      :license_plate => "MyString"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input#vehicle_manufacturer[name=?]", "vehicle[manufacturer]"

      assert_select "input#vehicle_model[name=?]", "vehicle[model]"

      assert_select "input#vehicle_license_plate[name=?]", "vehicle[license_plate]"
    end
  end
end
