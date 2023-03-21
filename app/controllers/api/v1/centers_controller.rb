class Api::V1::CentersController < ApplicationController
  def index
    @centers = Center.order('created_at desc')
    if @centers
      render json: @centers, status: :ok
    else
      render json: @centers.errors.full_messages, status: :bad_request
    end
  end

  def show
    @center = Center.where(id: params[:id])
    if @center
      render json: @center, status: 200
    else
      render json: 'No centers found!', status: 404
    end
  end

  def create
    @center = Center.new(center_params)
    if @center.save
      render json: @center, status: 201
    else
      render json: @center.error.full_messages, status: 500
    end
  end

  def destroy
    @center = Center.find_by_id(params[:id])
    if @center.destroy
      render json: 'Center Successfully deleted', status: 200
    else
      render json: 'unable to delete Center!', status: unprocessable_entity
    end
  end

  def update
    @center = Center.find(params[:id])
    if @center.update(center_params)
      render json: 'Center updated successfully', status: 201
    else
      render json: 'unable to update Center', status: unprocessable_entity
    end
  end

  private

  def center_params
    params.require(:center).permit(:name, :office, :staff, :active, :external_id, :submitted_on)
  end
end
