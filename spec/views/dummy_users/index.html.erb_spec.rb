require 'spec_helper'

describe "dummy_users/index" do
  before(:each) do
    assign(:dummy_users, [
      stub_model(DummyUser,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(DummyUser,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of dummy_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
