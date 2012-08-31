class StoreItemsController < ApplicationController
 
  def index
    @store_items = StoreItem.all
    @store_item = StoreItem.new
    respond_to do |format|
      format.html 
      format.js
    end
  end
 
  def edit
    @store_item = StoreItem.find(params[:id])
    respond_to do |format|
    format.js
    end
  end

  def create
    @store_item = StoreItem.new(params[:store_item])

    respond_to do |format|
       @store_item.save
        format.html { redirect_to store_items_url, notice: 'Store item was successfully created.' }
        format.js    
      end
  end

  def update
    @store_item = StoreItem.find(params[:id])

    respond_to do |format|
     @store_item.update_attributes(params[:store_item])
        format.html { redirect_to @store_item, notice: 'Store item was successfully updated.' }
        format.js      
    end
  end

  def destroy
    @store_item = StoreItem.find(params[:id])
    @store_item.destroy
    respond_to do |format|
      format.html { redirect_to store_items_url }
      format.js
    end
  end
end
