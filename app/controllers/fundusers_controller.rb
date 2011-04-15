class FundusersController < ApplicationController
  # GET /fundusers
  # GET /fundusers.xml
  def index
    @funduser = Funduser.find(current_funduser.id)
    @events = Event.where("fundusers_id = #{current_funduser.id}")

    respond_to do |format|
      format.html #index.html.erb
      format.xml  { render :xml => @funduser }
    end
  end

end