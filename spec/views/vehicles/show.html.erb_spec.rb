require 'rails_helper'

RSpec.describe "vehicles/show", :type => :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :manufacturer => "Manufacturer",
      :model => "Model",
      :license_plate => "License Plate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/License Plate/)
  end
end
