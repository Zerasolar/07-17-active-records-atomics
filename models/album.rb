class Album < ActiveRecord::Base
  has_and_belongs_to_many :photos
  validates :title, presence: true
end