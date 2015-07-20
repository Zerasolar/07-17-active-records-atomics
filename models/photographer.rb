class Photographer < ActiveRecord::Base
  has_many :photos
  validates :name, presence: true
  
  def top_photo?
    if self.albums.length > 1
      return true
    else
      return false
    end
  end
end