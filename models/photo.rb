class Photo < ActiveRecord::Base
  validates :title, presence: true
  has_and_belongs_to_many :albums
  belongs_to :photographer
end