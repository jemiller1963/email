require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :body => "MyText",
      :project => nil,
      :complete => false
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "textarea[name=?]", "task[body]"

      assert_select "input[name=?]", "task[project_id]"

      assert_select "input[name=?]", "task[complete]"
    end
  end
end
