class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.column :title, :string
      t.column :artist, :string
      t.column :upvote, :integer
      t.column :downvote, :integer
      t.column :summary, :string
      t.column :comments, :string
      t.column :subgenre_id, :integer

      t.timestamps
    end
  end
end
