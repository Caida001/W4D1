class ArtworkSharesController
  def create
    artwork_shares = ArtworkShares.new(artwork_shares_params)
    if artwork_shares.save
      render json: artwork_shares
    else
      render json: artwork_shares.errors.full_message
  end

  def destroy
    artwork_shares = ArtworkShares.find_by(id: params[:id])
    artwork_shares.destroy
    render json: artwork_shares
  end

  private

  def artwork_shares_params
    params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
  end
end
