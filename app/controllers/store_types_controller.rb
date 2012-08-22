class StoreTypesController < ApplicationController
  # GET /store_types
  # GET /store_types.json
  def index
    @store_types = StoreType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_types }
    end
  end

  # GET /store_types/1
  # GET /store_types/1.json
  def show
    @store_type = StoreType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_type }
    end
  end

  # GET /store_types/new
  # GET /store_types/new.json
  def new
    @store_type = StoreType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_type }
    end
  end

  # GET /store_types/1/edit
  def edit
    @store_type = StoreType.find(params[:id])
  end

  # POST /store_types
  # POST /store_types.json
  def create
    @store_type = StoreType.new(params[:store_type])

    respond_to do |format|
      if @store_type.save
        format.html { redirect_to @store_type, notice: 'Store type was successfully created.' }
        format.json { render json: @store_type, status: :created, location: @store_type }
      else
        format.html { render action: "new" }
        format.json { render json: @store_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_types/1
  # PUT /store_types/1.json
  def update
    @store_type = StoreType.find(params[:id])

    respond_to do |format|
      if @store_type.update_attributes(params[:store_type])
        format.html { redirect_to @store_type, notice: 'Store type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_types/1
  # DELETE /store_types/1.json
  def destroy
    @store_type = StoreType.find(params[:id])
    @store_type.destroy

    respond_to do |format|
      format.html { redirect_to store_types_url }
      format.json { head :no_content }
    end
  end
end
