class TelevisionsController < ApplicationController
  def index
    tvs = Television.all
    render json: tvs.as_json
  end

  def create
    tv = Television.new(
      brand: params[:brand],
      price: params[:price],
      screen_size: params[:screen_size],
      resolution: params[:resolution]
    )
    tv.save
    render json: tv.as_json
  end

  def show
    tv = Television.find_by(id: params[:id])
    render json: tv.as_json
  end

  def update
    tv = Television.find_by(id: params[:id])
    tv.brand = params[:brand] || tv.brand
    tv.price = params[:price] || tv.price
    tv.screen_size = params[:screen_size] || tv.screen_size
    tv.resolution = params[:resolution] || tv.resolution
    tv.save
    render json: tv.as_json
  end

  def destroy
    tv = Television.find_by(id: params[:id])
    tv.destroy
    tv = Television.all
    render json: tv.as_json 
  end
end
