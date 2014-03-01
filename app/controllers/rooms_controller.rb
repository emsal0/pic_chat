class RoomsController < ApplicationController
  def index
  	@rooms = Room.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  	@room = Room.find_by_name(params[:name])
  	respond_to do |format|
  		format.js
  		format.html
  	end
  end

  def update
  end

  def destroy
  end
end
