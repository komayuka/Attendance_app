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
  end

  def destroy
  end


end
