class Song < ActiveRecord::Base
  validates :title, :presence => true
  validates :artist, :presence => true
  validates :summary, :presence => true
  validates :comments, :presence => true
  belongs_to :subgenre
end
