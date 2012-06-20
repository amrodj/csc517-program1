require 'spec_helper'

describe "dummy_posts/index" do
  before(:each) do
    assign(:dummy_posts, [
      stub_model(DummyPost,
        :post => "Post",
        :content => "MyText",
        :user_id => 1
      ),
      stub_model(DummyPost,
        :post => "Post",
        :content => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of dummy_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
