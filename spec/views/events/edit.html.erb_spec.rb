require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "MyString",
      :description => "MyString",
      :create_user_name => "MyString",
      :capacity => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "input#event_description[name=?]", "event[description]"
      assert_select "input#event_create_user_name[name=?]", "event[create_user_name]"
      assert_select "input#event_capacity[name=?]", "event[capacity]"
    end
  end
end
