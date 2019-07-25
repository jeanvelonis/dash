class PoniesController < ApplicationController

  def index
    @ponies = Pony.all
  end

  def new 
    @ponies = Pony.new
  end

  def create
    Pony.create(pony_params)
    redirect_to root_path
  end

  private

  def pony_params
    params.require(:pony).permit(:title, :description, :cost)
  end

end
