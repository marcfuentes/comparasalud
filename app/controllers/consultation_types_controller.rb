class ConsultationTypesController < ApplicationController
  # GET /consultation_types
  # GET /consultation_types.json
  def index
    @consultation_types = ConsultationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consultation_types }
    end
  end

  # GET /consultation_types/1
  # GET /consultation_types/1.json
  def show
    @consultation_type = ConsultationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consultation_type }
    end
  end

  # GET /consultation_types/new
  # GET /consultation_types/new.json
  def new
    @consultation_type = ConsultationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consultation_type }
    end
  end

  # GET /consultation_types/1/edit
  def edit
    @consultation_type = ConsultationType.find(params[:id])
  end

  # POST /consultation_types
  # POST /consultation_types.json
  def create
    @consultation_type = ConsultationType.new(params[:consultation_type])

    respond_to do |format|
      if @consultation_type.save
        format.html { redirect_to @consultation_type, notice: 'Consultation type was successfully created.' }
        format.json { render json: @consultation_type, status: :created, location: @consultation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @consultation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consultation_types/1
  # PUT /consultation_types/1.json
  def update
    @consultation_type = ConsultationType.find(params[:id])

    respond_to do |format|
      if @consultation_type.update_attributes(params[:consultation_type])
        format.html { redirect_to @consultation_type, notice: 'Consultation type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consultation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultation_types/1
  # DELETE /consultation_types/1.json
  def destroy
    @consultation_type = ConsultationType.find(params[:id])
    @consultation_type.destroy

    respond_to do |format|
      format.html { redirect_to consultation_types_url }
      format.json { head :no_content }
    end
  end
end
