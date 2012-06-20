require 'spec_helper'

describe "dummy_users/edit" do
  before(:each) do
    @dummy_user = assign(:dummy_user, stub_model(DummyUser,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit dummy_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dummy_users_path(@dummy_user), :method => "post" do
      assert_select "input#dummy_user_name", :name => "dummy_user[name]"
      assert_select "input#dummy_user_email", :name => "dummy_user[email]"
    end
  end
end
