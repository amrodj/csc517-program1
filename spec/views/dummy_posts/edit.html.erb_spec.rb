require 'spec_helper'

describe "dummy_posts/edit" do
  before(:each) do
    @dummy_post = assign(:dummy_post, stub_model(DummyPost,
      :post => "MyString",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit dummy_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dummy_posts_path(@dummy_post), :method => "post" do
      assert_select "input#dummy_post_post", :name => "dummy_post[post]"
      assert_select "textarea#dummy_post_content", :name => "dummy_post[content]"
      assert_select "input#dummy_post_user_id", :name => "dummy_post[user_id]"
    end
  end
end
