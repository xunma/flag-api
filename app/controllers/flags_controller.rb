class FlagsController < ApplicationController
  def new
    @flag = Flag.new
  end

  def create
    @flag = Flag.new(flag_params)
    if @flag.save
      # @flag.photo.attach(params[:photo])
      redirect_to @flag
    else
      render "new"
    end
  end

  def show
    @flag = Flag.find(params[:id])
  end

  private

  def flag_params
    params.require(:flag).permit(:title, :note, :photo)
  end
end
