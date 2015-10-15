require 'rails_helper'

describe "the add a subgenre process" do
  it "adds a new subgenre" do
    visit subgenres_path
    click_on 'Add new stylez'
    fill_in 'Name', :with => 'chicago'
    click_on 'Create Subgenre'
    expect(page).to have_content 'chicago'
  end

  it "gives error when no name is entered" do
    visit new_subgenre_path
    click_on 'Create Subgenre'
    expect(page).to have_content 'errors'
  end
end
