require 'rails_helper'

RSpec.describe "lots/show", :type => :view do
  before(:each) do
    @lot = assign(:lot, Lot.create!(
      :name => "Name",
      :number_of_spaces => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
