require 'rails_helper'

RSpec.describe "projects/show", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :no => 1,
      :title => "Title",
      :place => "Place",
      :cotent => "Cotent",
      :term => "Term",
      :environment => "Environment",
      :job => "Job",
      :contract => "Contract",
      :business => "Business"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Cotent/)
    expect(rendered).to match(/Term/)
    expect(rendered).to match(/Environment/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Contract/)
    expect(rendered).to match(/Business/)
  end
end
