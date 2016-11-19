class SubsController < ApplicationController

  def new
     @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to @sub
    else
      redirect_to @sub
      flash[:notice] = "Subreddit could not be saved."
    end
  end

  def show
    @sub = Sub.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_params
      params.require(:sub).permit(:name)
    end

end
