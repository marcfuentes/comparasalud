class ComunesController < ApplicationController
  # GET /comunes
  # GET /comunes.json
  def index
    @comunes = Comune.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comunes }
    end
  end

  # GET /comunes/1
  # GET /comunes/1.json
  def show
    @comune = Comune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comune }
    end
  end

  # GET /comunes/new
  # GET /comunes/new.json
  def new
    @comune = Comune.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comune }
    end
  end

  # GET /comunes/1/edit
  def edit
    @comune = Comune.find(params[:id])
  end

  # POST /comunes
  # POST /comunes.json
  def create
    @comune = Comune.new(params[:comune])

    respond_to do |format|
      if @comune.save
        format.html { redirect_to @comune, notice: 'Comune was successfully created.' }
        format.json { render json: @comune, status: :created, location: @comune }
      else
        format.html { render action: "new" }
        format.json { render json: @comune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comunes/1
  # PUT /comunes/1.json
  def update
    @comune = Comune.find(params[:id])

    respond_to do |format|
      if @comune.update_attributes(params[:comune])
        format.html { redirect_to @comune, notice: 'Comune was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunes/1
  # DELETE /comunes/1.json
  def destroy
    @comune = Comune.find(params[:id])
    @comune.destroy

    respond_to do |format|
      format.html { redirect_to comunes_url }
      format.json { head :no_content }
    end
  end
end
