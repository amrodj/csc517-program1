require 'spec_helper'

describe "dummy_posts/show" do
  before(:each) do
    @dummy_post = assign(:dummy_post, stub_model(DummyPost,
      :post => "Post",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Post/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
