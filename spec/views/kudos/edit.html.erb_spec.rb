require 'rails_helper'

RSpec.describe "kudos/edit", type: :view do
  before(:each) do
    @kudo = assign(:kudo, Kudo.create!(
      title: "MyString",
      content: "MyText",
      giver: nil,
      receiver: nil
    ))
  end

  it "renders the edit kudo form" do
    render

    assert_select "form[action=?][method=?]", kudo_path(@kudo), "post" do

      assert_select "input[name=?]", "kudo[title]"

      assert_select "textarea[name=?]", "kudo[content]"

      assert_select "input[name=?]", "kudo[giver_id]"

      assert_select "input[name=?]", "kudo[receiver_id]"
    end
  end
end
