require 'rails_helper'

RSpec.describe "spaces/show", :type => :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      :space_number => "Space Number",
      :lot => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Space Number/)
    expect(rendered).to match(//)
  end
end
