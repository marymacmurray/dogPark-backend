class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :update, :destroy]

  # GET /updates
  def index
    @updates = Update.all

    render json: @updates, include: :user
  end

  # GET /updates/1
  def show
    render json: @update
  end

  # POST /updates
  def create
    @update = Update.new(update_params)

    if @update.save
      render json: @update, status: :created, location: @update
    else
      render json: @update.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /updates/1
  def update
    if @update.update(update_params)
      render json: @update
    else
      render json: @update.errors, status: :unprocessable_entity
    end
  end

  # DELETE /updates/1
  def destroy
    @update.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @update = Update.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def update_params
      params.require(:update).permit(:user_id, :content)
    end
end
