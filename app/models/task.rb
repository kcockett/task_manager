class Task < ApplicationRecord 
  def laundry?
    if title.downcase.include?("laundry") || description.downcase.include?("laundry")
      return true
    else
      return false
    end
  end
end 