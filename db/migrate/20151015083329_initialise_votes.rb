class InitialiseVotes < ActiveRecord::Migration
  def change
    change_column_default(:songs, :upvote, 0)
    change_column_default(:songs, :downvote, 0)
  end
end
