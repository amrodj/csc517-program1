require 'spec_helper'

describe "dummy_users/show" do
  before(:each) do
    @dummy_user = assign(:dummy_user, stub_model(DummyUser,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
