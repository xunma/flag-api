class FlagsController < ApplicationController
  def new
    @flag = Flag.new
  end

  def create
    @flag = Flag.new(flag_params)
    if @flag.save
      redirect_to @flag
    else
      render "new"
    end
  end

  private

  def flag_params
    params.require(:flag).permit(:title, :note)
  end
end
