class SongsController < ApplicationController
  def new
    @subgenres = Subgenre.find(params[:subgenre_id])
    @songs = @subgenres.songs.new
  end

  def create
    @subgenres = Subgenre.find(params[:subgenre_id])
    @songs = @subgenres.songs.new(song_params)
    if @songs.save
      redirect_to subgenre_path(@subgenres)
    else
      render 'new'
    end
  end


  private
  def song_params
    params.require(:song).permit(:title, :artist, :summary, :comments)
  end
end
