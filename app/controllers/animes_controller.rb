class AnimesController < ApplicationController

  def new
    @anime = Anime.new
  end

  def index
    @animes = Anime.all
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def update
  end

  def edit
  end

  def create
    @anime = Anime.new(anime_params)
    @anime.user_id = current_user.id
    @anime.save
    redirect_to animes_path
  end

  def destroy
  end

 private

 def anime_params
   params.require(:anime).permit(:anime_name, :introduction, :image)
 end

end
