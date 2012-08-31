class StoreCategoriesController < ApplicationController

  def index
    @store_categories = StoreCategory.all
    @store_category = StoreCategory.new
    respond_to do |format|
      format.html 
      format.js
    end
  end
 
 
  def edit
    @store_category = StoreCategory.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
  def create
    @store_category = StoreCategory.new(params[:store_category])

    respond_to do |format|
      if @store_category.save
        format.html { redirect_to store_categories_url, notice: 'Store category was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end
  def update
    @store_category = StoreCategory.find(params[:id])

    respond_to do |format|
      if @store_category.update_attributes(params[:store_category])
        format.html { redirect_to store_categories_url, notice: 'Store category was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end
  def destroy
    @store_category = StoreCategory.find(params[:id])
    @store_category.destroy

    respond_to do |format|
      format.html { redirect_to store_categories_url }
      format.js
    end
  end
end
