class Api::CryptoKittiesController < ApplicationController
  def index
    @kitties = CryptoKitty.page(page_params).per(per_page_params)
    render json: { pagination_info: pagination_info, cats: @kitties }, status: :ok
  end

  def show
    @kitty = CryptoKitty.find(params[:id])
    if @kitty.present?
      render json: @kitty, status: :ok
    else
      render json: @kitty.errors, status: :not_found
    end
  end

  private

  def page_params
    params[:page].to_i.zero? ? 1 : params[:page]
  end


  def per_page_params
    params[:per_page].to_i.zero? ? 50 : params[:per_page]
  end

  def pagination_info
    {
      total: CryptoKitty.count,
      limit_per_page: @kitties.limit_value,
      total_pages: @kitties.total_pages,
      current_page: @kitties.current_page,
      next_page: @kitties.next_page,
      prev_page: @kitties.prev_page
    }
  end
end

