require 'rails_helper'

RSpec.describe "kudos/index", type: :view do
  before(:each) do
    assign(:kudos, [
      Kudo.create!(
        title: "Title",
        content: "MyText",
        giver: nil,
        receiver: nil
      ),
      Kudo.create!(
        title: "Title",
        content: "MyText",
        giver: nil,
        receiver: nil
      )
    ])
  end

  it "renders a list of kudos" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
