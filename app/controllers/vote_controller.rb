class VoteController < ApplicationController
  
	# currently provides HTML table of weeks
	# future, automatically directs users to current week's remodeling options  
  def index
  end

  
  # route params, :id
  def week
  	@week = Week.find(params[:id])
  	@photos = Photo.where("week_int =?", @week_number)
  end


end
