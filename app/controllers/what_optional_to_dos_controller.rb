class WhatOptionalToDosController < ApplicationController
  before_action :set_what_optional_to_do, only: [:show, :edit, :update, :destroy]

  # GET /what_optional_to_dos
  # GET /what_optional_to_dos.json
  def index
    @what_optional_to_dos = WhatOptionalToDo.all
  end

  # GET /what_optional_to_dos/1
  # GET /what_optional_to_dos/1.json
  def show
  end

  # GET /what_optional_to_dos/new
  def new
    @what_optional_to_do = WhatOptionalToDo.new
  end

  # GET /what_optional_to_dos/1/edit
  def edit
  end

  # POST /what_optional_to_dos
  # POST /what_optional_to_dos.json
  def create
    @what_optional_to_do = WhatOptionalToDo.new(what_optional_to_do_params)

    respond_to do |format|
      if @what_optional_to_do.save
        format.html { redirect_to @what_optional_to_do, notice: 'What optional to do was successfully created.' }
        format.json { render :show, status: :created, location: @what_optional_to_do }
      else
        format.html { render :new }
        format.json { render json: @what_optional_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /what_optional_to_dos/1
  # PATCH/PUT /what_optional_to_dos/1.json
  def update
    respond_to do |format|
      if @what_optional_to_do.update(what_optional_to_do_params)
        format.html { redirect_to @what_optional_to_do, notice: 'What optional to do was successfully updated.' }
        format.json { render :show, status: :ok, location: @what_optional_to_do }
      else
        format.html { render :edit }
        format.json { render json: @what_optional_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /what_optional_to_dos/1
  # DELETE /what_optional_to_dos/1.json
  def destroy
    @what_optional_to_do.destroy
    respond_to do |format|
      format.html { redirect_to what_optional_to_dos_url, notice: 'What optional to do was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_what_optional_to_do
      @what_optional_to_do = WhatOptionalToDo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def what_optional_to_do_params
      params.require(:what_optional_to_do).permit(:title, :description, :funtionalities)
    end
end
