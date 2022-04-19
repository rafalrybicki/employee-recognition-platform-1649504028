require 'rails_helper'

RSpec.describe "kudos/new", type: :view do
  before(:each) do
    assign(:kudo, Kudo.new(
      title: "MyString",
      content: "MyText",
      giver: nil,
      receiver: nil
    ))
  end

  it "renders new kudo form" do
    render

    assert_select "form[action=?][method=?]", kudos_path, "post" do

      assert_select "input[name=?]", "kudo[title]"

      assert_select "textarea[name=?]", "kudo[content]"

      assert_select "input[name=?]", "kudo[giver_id]"

      assert_select "input[name=?]", "kudo[receiver_id]"
    end
  end
end
