class Week < ActiveRecord::Base

	# read/write acess for the folllowing object variables
  attr_accessible :date_start, :name, :week_number


  # photos associated with this week
  def photos
  	return Photo.where("week_int = ?", self.week_number)
  end


end
