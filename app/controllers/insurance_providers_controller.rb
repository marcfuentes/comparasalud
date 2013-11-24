class InsuranceProvidersController < ApplicationController
  # GET /insurance_providers
  # GET /insurance_providers.json
  def index
    @insurance_providers = InsuranceProvider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @insurance_providers }
    end
  end

  # GET /insurance_providers/1
  # GET /insurance_providers/1.json
  def show
    @insurance_provider = InsuranceProvider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @insurance_provider }
    end
  end

  # GET /insurance_providers/new
  # GET /insurance_providers/new.json
  def new
    @insurance_provider = InsuranceProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @insurance_provider }
    end
  end

  # GET /insurance_providers/1/edit
  def edit
    @insurance_provider = InsuranceProvider.find(params[:id])
  end

  # POST /insurance_providers
  # POST /insurance_providers.json
  def create
    @insurance_provider = InsuranceProvider.new(params[:insurance_provider])

    respond_to do |format|
      if @insurance_provider.save
        format.html { redirect_to @insurance_provider, notice: 'Insurance provider was successfully created.' }
        format.json { render json: @insurance_provider, status: :created, location: @insurance_provider }
      else
        format.html { render action: "new" }
        format.json { render json: @insurance_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /insurance_providers/1
  # PUT /insurance_providers/1.json
  def update
    @insurance_provider = InsuranceProvider.find(params[:id])

    respond_to do |format|
      if @insurance_provider.update_attributes(params[:insurance_provider])
        format.html { redirect_to @insurance_provider, notice: 'Insurance provider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @insurance_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_providers/1
  # DELETE /insurance_providers/1.json
  def destroy
    @insurance_provider = InsuranceProvider.find(params[:id])
    @insurance_provider.destroy

    respond_to do |format|
      format.html { redirect_to insurance_providers_url }
      format.json { head :no_content }
    end
  end
end
