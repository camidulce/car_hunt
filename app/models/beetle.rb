class Beetle < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  after_validation :geocode

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


  # def self.search(query)
  # where("zip like ?", "%#{query}%")
  # end

end
