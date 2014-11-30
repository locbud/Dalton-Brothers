class WhatShouldAvoidsController < ApplicationController
  before_action :set_what_should_avoid, only: [:show, :edit, :update, :destroy]

  # GET /what_should_avoids
  # GET /what_should_avoids.json
  def index
    @what_should_avoids = WhatShouldAvoid.all
  end

  # GET /what_should_avoids/1
  # GET /what_should_avoids/1.json
  def show
  end

  # GET /what_should_avoids/new
  def new
    @what_should_avoid = WhatShouldAvoid.new
  end

  # GET /what_should_avoids/1/edit
  def edit
  end

  # POST /what_should_avoids
  # POST /what_should_avoids.json
  def create
    @what_should_avoid = WhatShouldAvoid.new(what_should_avoid_params)

    respond_to do |format|
      if @what_should_avoid.save
        format.html { redirect_to @what_should_avoid, notice: 'What should avoid was successfully created.' }
        format.json { render :show, status: :created, location: @what_should_avoid }
      else
        format.html { render :new }
        format.json { render json: @what_should_avoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /what_should_avoids/1
  # PATCH/PUT /what_should_avoids/1.json
  def update
    respond_to do |format|
      if @what_should_avoid.update(what_should_avoid_params)
        format.html { redirect_to @what_should_avoid, notice: 'What should avoid was successfully updated.' }
        format.json { render :show, status: :ok, location: @what_should_avoid }
      else
        format.html { render :edit }
        format.json { render json: @what_should_avoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /what_should_avoids/1
  # DELETE /what_should_avoids/1.json
  def destroy
    @what_should_avoid.destroy
    respond_to do |format|
      format.html { redirect_to what_should_avoids_url, notice: 'What should avoid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_what_should_avoid
      @what_should_avoid = WhatShouldAvoid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def what_should_avoid_params
      params.require(:what_should_avoid).permit(:content)
    end
end
