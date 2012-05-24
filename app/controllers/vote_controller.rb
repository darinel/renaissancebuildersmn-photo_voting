
# the vote controller is an extended and customized version of the scaffold setup
class VoteController < ApplicationController
  
	# currently provides HTML table of weeks
	# future, automatically directs users to current week's remodeling options  
  def index
  end

  
  # route params, :id
  def week
  	@week = Week.find(params[:id])
  	@photos = Photo.where("week_int = ?", @week.week_number)

  	# each vote is specifc to a week and a user
  	@vote_new = Vote.new
    @votes_week = Vote.where("week =?", @week.week_number)

  end


  # uses HTTP POST
  def submit
    @vote = Vote.new(params[:vote_new])
    @vote.week = params[:week_id]
    @vote.photo = params[:photo_id]

    respond_to do |format|
      if @vote.save
        format.html { 
          redirect_to :action => 'week', :id => @vote.week
          flash[:notice] = 'Your vote was successfully cast.'
           }
        # format.json {} # not API accessible at this point 
      else
        format.html { render action: 'week', :id => @vote.week, notice: 'sflksjdf'}
        # from the photo scaffold
        # format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end


end # end of class
