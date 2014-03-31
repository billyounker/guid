class GetGuidsController < ApplicationController
  # GET /get_guids
  # GET /get_guids.json
  def index
    @get_guids = GetGuid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @get_guids }
    end
  end

  # GET /get_guids/1
  # GET /get_guids/1.json
  def show
    @get_guid = GetGuid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @get_guid }
    end
  end

  # GET /get_guids/new
  # GET /get_guids/new.json
  def new
    @get_guid = GetGuid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @get_guid }
    end
  end

  # GET /get_guids/1/edit
  def edit
    @get_guid = GetGuid.find(params[:id])
  end

  # POST /get_guids
  # POST /get_guids.json
  def create
    @get_guid = GetGuid.new(params[:get_guid])

    respond_to do |format|
      if @get_guid.save
        format.html { redirect_to @get_guid, notice: 'Get guid was successfully created.' }
        format.json { render json: @get_guid, status: :created, location: @get_guid }
      else
        format.html { render action: "new" }
        format.json { render json: @get_guid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /get_guids/1
  # PUT /get_guids/1.json
  def update
    @get_guid = GetGuid.find(params[:id])

    respond_to do |format|
      if @get_guid.update_attributes(params[:get_guid])
        format.html { redirect_to @get_guid, notice: 'Get guid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @get_guid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_guids/1
  # DELETE /get_guids/1.json
  def destroy
    @get_guid = GetGuid.find(params[:id])
    @get_guid.destroy

    respond_to do |format|
      format.html { redirect_to get_guids_url }
      format.json { head :no_content }
    end
  end
end
