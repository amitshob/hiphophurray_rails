class SubgenresController < ApplicationController
  def index
    @subgenres = Subgenre.all
    # @found_genre = Subgenre.find(params[:id])
    render :index
  end

  def show
    @subgenres = Subgenre.find(params[:id])
    @songs = @subgenres.songs
    render :show
  end

  def new
    @subgenres = Subgenre.new
    render :new
  end

  def create
    @subgenres = Subgenre.new(subgenre_params)
    if @subgenres.save
      redirect_to  subgenres_path
    else
      render :new
    end
  end

  def edit
    @subgenres = Subgenre.find(params[:id])
    render :edit
  end

  def update
    @subgenres= Subgenre.find(params[:id])
    if @subgenres.update(subgenre_params)
      redirect_to subgenres_path
    else
      render :edit
    end
  end

  def destroy
    @subgenres = Subgenre.find(params[:id])
    @subgenres.destroy
    @subgenres.songs.destroy
    redirect_to subgenres_path

  end


  private
  def subgenre_params
    params.require(:subgenre).permit(:name)
  end



end
