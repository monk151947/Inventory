class StoreCategoriesController < ApplicationController
  # GET /store_categories
  # GET /store_categories.json
  def index
    @store_categories = StoreCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_categories }
    end
  end

  # GET /store_categories/1
  # GET /store_categories/1.json
  def show
    @store_category = StoreCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_category }
    end
  end

  # GET /store_categories/new
  # GET /store_categories/new.json
  def new
    @store_category = StoreCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_category }
    end
  end

  # GET /store_categories/1/edit
  def edit
    @store_category = StoreCategory.find(params[:id])
  end

  # POST /store_categories
  # POST /store_categories.json
  def create
    @store_category = StoreCategory.new(params[:store_category])

    respond_to do |format|
      if @store_category.save
        format.html { redirect_to @store_category, notice: 'Store category was successfully created.' }
        format.json { render json: @store_category, status: :created, location: @store_category }
      else
        format.html { render action: "new" }
        format.json { render json: @store_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_categories/1
  # PUT /store_categories/1.json
  def update
    @store_category = StoreCategory.find(params[:id])

    respond_to do |format|
      if @store_category.update_attributes(params[:store_category])
        format.html { redirect_to @store_category, notice: 'Store category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_categories/1
  # DELETE /store_categories/1.json
  def destroy
    @store_category = StoreCategory.find(params[:id])
    @store_category.destroy

    respond_to do |format|
      format.html { redirect_to store_categories_url }
      format.json { head :no_content }
    end
  end
end
