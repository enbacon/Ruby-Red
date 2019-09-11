# frozen_string_literal: true

class NailPolishesController < OpenReadController
  before_action :set_nail_polish, only: %i[update destroy]

  # GET /nail_polishes
  # GET /nail_polishes.json
  def index
    @nail_polishes = NailPolish.all

    render json: @nail_polishes
  end

  # GET /nail_polishes/1
  # GET /nail_polishes/1.json
  def show
    render json: NailPolish.find(params[:id])
  end

  # POST /nail_polishes
  # POST /nail_polishes.json
  def create
    @nail_polish = current_user.nail_polishes.build(nail_polish_params)

    if @nail_polish.save
      render json: @nail_polish, status: :created
    else
      render json: @nail_polish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nail_polishes/1
  # PATCH/PUT /nail_polishes/1.json
  def update
    if @nail_polish.update(nail_polish_params)
      render json: @nail_polish
    else
      render json: @nail_polish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nail_polishes/1
  # DELETE /nail_polishes/1.json
  def destroy
    @nail_polish.destroy

    head :no_content
  end

  def set_nail_polish
    @nail_polish = current_user.nail_polishes.find(params[:id])
  end

  def nail_polish_params
    params.require(:nail_polish).permit(:brand, :color_name, :color)
  end

  private :set_nail_polish, :nail_polish_params
end
