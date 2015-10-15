class Subgenre < ActiveRecord::Base
  validates :name, :presence => true
  has_many :songs, dependent: :destroy
end
