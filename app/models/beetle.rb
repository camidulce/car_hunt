class Beetle < ActiveRecord::Base
  belongs_to :user

  def self.search(query)
  where("zip like ?", "%#{query}%")
  end

end
