require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :no => 1,
        :title => "Title",
        :place => "Place",
        :cotent => "Cotent",
        :term => "Term",
        :environment => "Environment",
        :job => "Job",
        :contract => "Contract",
        :business => "Business"
      ),
      Project.create!(
        :no => 1,
        :title => "Title",
        :place => "Place",
        :cotent => "Cotent",
        :term => "Term",
        :environment => "Environment",
        :job => "Job",
        :contract => "Contract",
        :business => "Business"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Cotent".to_s, :count => 2
    assert_select "tr>td", :text => "Term".to_s, :count => 2
    assert_select "tr>td", :text => "Environment".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Contract".to_s, :count => 2
    assert_select "tr>td", :text => "Business".to_s, :count => 2
  end
end
