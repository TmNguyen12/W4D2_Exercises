class CatsController < ApplicationController
  #@colors = ['orange', 'black', 'white', 'blue']
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    @cat = Cat.new #don't forget this!
    render :new
  end

  def edit
    #@COLORS = ['orange', 'black', 'white', 'blue']
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  private
  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end

end
