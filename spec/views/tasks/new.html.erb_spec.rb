require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :body => "MyText",
      :project => nil,
      :complete => false
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "textarea[name=?]", "task[body]"

      assert_select "input[name=?]", "task[project_id]"

      assert_select "input[name=?]", "task[complete]"
    end
  end
end
