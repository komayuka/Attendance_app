class AnimesController < ApplicationController

  def new
    @anime = Anime.new
  end

  def index
    @animes = Anime.all
  end

  def show
  end

  def update
  end

  def edit
  end

  def create
    @anime = Anime.new(anime_params)
    @anime.user_id = curent_user.id
    @anime.save
    redirect_to animes_path
  end

  def destroy
  end

 private

 def anime_params
   params.requier(:anime).permit(:anime_name, :intruduction, :image)
 end

end
