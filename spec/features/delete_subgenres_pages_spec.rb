require 'rails_helper'

describe "the delete a subgenre process" do
  it "delete a subgenre" do
    subgenre = Subgenre.create(:name => "chicago", :description => "fun")
    visit subgenres_path
    click_link 'chicago'
    click_on 'Delete Genre'
    expect(page).to have_content ''
  end

  it "gives error when no name is entered" do
    visit new_subgenre_path
    click_on 'Create Subgenre'
    expect(page).to have_content 'errors'
  end
end
