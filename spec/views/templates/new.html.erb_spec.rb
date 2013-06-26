require 'spec_helper'

describe "templates/new" do
  before(:each) do
    assign(:template, stub_model(Template,
      :name => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", templates_path, "post" do
      assert_select "input#template_name[name=?]", "template[name]"
      assert_select "input#template_content[name=?]", "template[content]"
    end
  end
end
