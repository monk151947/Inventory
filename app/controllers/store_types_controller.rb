class StoreTypesController < ApplicationController

  def index
    @store_types = StoreType.all
    @store_type = StoreType.new
    respond_to do |format|
      format.html
      format.js
    end
  end

 

  def edit
    @store_type = StoreType.find(params[:id])
    respond_to do |format|
      format.html { redirect_to store_types_url }
      format.js
    end
  end
  def create
    @store_type = StoreType.new(params[:store_type])

    respond_to do |format|
      if @store_type.save
        format.html { redirect_to store_types_url, notice: 'Store type was successfully created.' }
        format.js 
      else
        format.html { render action: "new" }
        format.js 
      end
    end
  end

  def update
    @store_type = StoreType.find(params[:id])

    respond_to do |format|
      if @store_type.update_attributes(params[:store_type])
        format.html { redirect_to store_types_url, notice: 'Store type was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js   { render action: "edit" }
      end
    end
  end

  def destroy
    @store_type = StoreType.find(params[:id])
    @store_type.destroy

    respond_to do |format|
      format.html { redirect_to store_types_url }
      format.json { head :no_content }
      format.js
    end
  end
end
