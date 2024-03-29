require 'rails_helper'

RSpec.describe "articles/show", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "Title",
      :text => "MyText",
      :user_id => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
