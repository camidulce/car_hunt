class Beetle < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  after_validation :geocode

  # def self.search(query)
  # where("zip like ?", "%#{query}%")
  # end

end
