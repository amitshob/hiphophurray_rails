require 'rails_helper'

describe "the add a song to subgenre process" do
  it "adds a new song" do
    subgenre = Subgenre.create(:name => "Chicago", :description => "fun")
    subgenre.save
    visit subgenre_path(subgenre)
    click_on 'Add a song to this genre'
    fill_in 'Title', :with => 'title'
    fill_in 'Artist', :with => 'artist'
    fill_in 'Summary', :with => 'summary'
    fill_in 'Comments', :with => 'comments'
    click_on 'Create Song'
    expect(page).to have_content 'Tha songz'
  end

  it "gives error when no name is entered" do
    subgenre = Subgenre.create(:name => "Chicago", :description => "")
    visit new_subgenre_song_path(subgenre)
    click_on 'Create Song'
    expect(page).to have_content 'errors'
  end
end
