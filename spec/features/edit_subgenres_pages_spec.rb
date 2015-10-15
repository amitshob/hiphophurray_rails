require 'rails_helper'

describe "the edit a subgenre process" do
  it "edit a subgenre" do
    subgenre = Subgenre.create(:name => "chicago", :description => "fun")
    visit subgenres_path
    click_link 'chicago'
    click_on 'Edit Genre Name'
    fill_in 'Name', :with => "Chicago"
    click_on 'Update Subgenre'
    expect(page).to have_content 'Chicago'
  end

  it "gives error when no name is entered" do
    visit new_subgenre_path
    click_on 'Create Subgenre'
    expect(page).to have_content 'errors'
  end
end
