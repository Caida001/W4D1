

class ArtworksController < ApplicationController
  def show
    artwork = Artwork.find_by(id: params[:id])
    if artwork
      render json: artwork
    else
      render json: "not found", status: :not_found
    end
  end

  def index
    user = User.find_by(id: params[:user_id])
    debugger
    if user
      artworks = user.artworks + user.shared_artworks
      render json: artworks
    else
      render json: "not found", status: :not_found
    end
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    artwork.destroy
    render json: artwork
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: "not found", status: :not_found
    end
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork
      artwork.update(artwork_params)
      render json: artwork
    else
      render json: "not found", status: :not_found
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
