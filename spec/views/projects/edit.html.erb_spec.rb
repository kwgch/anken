require 'rails_helper'

RSpec.describe "projects/edit", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :no => 1,
      :title => "MyString",
      :place => "MyString",
      :cotent => "MyString",
      :term => "MyString",
      :environment => "MyString",
      :job => "MyString",
      :contract => "MyString",
      :business => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_no[name=?]", "project[no]"

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_place[name=?]", "project[place]"

      assert_select "input#project_cotent[name=?]", "project[cotent]"

      assert_select "input#project_term[name=?]", "project[term]"

      assert_select "input#project_environment[name=?]", "project[environment]"

      assert_select "input#project_job[name=?]", "project[job]"

      assert_select "input#project_contract[name=?]", "project[contract]"

      assert_select "input#project_business[name=?]", "project[business]"
    end
  end
end
