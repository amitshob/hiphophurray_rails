require 'rails_helper'

describe "the edit a song process" do
  it "edit a song" do
    subgenre = Subgenre.create(:name => "chicago", :description => "fun")
    song = Song.create(:title => "a", :artist => "b", :summary => "c", :comments => "d", :downvote => 0, :upvote => 0, :subgenre_id => 1)
    visit edit_subgenre_song_path(subgenre, song)
    click_on 'Edit Song'
    fill_in 'Title', :with => "Get Paid"
    fill_in 'Artist', :with => "Joey Bada$$"
    fill_in 'Summary', :with => "Tight"
    fill_in 'Comments', :with => "Super dope"
    click_on 'Update Song'
    expect(page).to have_content 'Joey Bada$$'
  end

  it "gives error when no name is entered" do
    visit edit_subgenre_song_path(subgenre, song)
    click_on 'Update Song'
    expect(page).to have_content 'errors'
  end
end
