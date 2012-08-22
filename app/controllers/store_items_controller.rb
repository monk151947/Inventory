class StoreItemsController < ApplicationController
  # GET /store_items
  # GET /store_items.json
  def index
    @store_items = StoreItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_items }
    end
  end

  # GET /store_items/1
  # GET /store_items/1.json
  def show
    @store_item = StoreItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_item }
    end
  end

  # GET /store_items/new
  # GET /store_items/new.json
  def new
    @store_item = StoreItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_item }
    end
  end

  # GET /store_items/1/edit
  def edit
    @store_item = StoreItem.find(params[:id])
  end

  # POST /store_items
  # POST /store_items.json
  def create
    @store_item = StoreItem.new(params[:store_item])

    respond_to do |format|
      if @store_item.save
        format.html { redirect_to @store_item, notice: 'Store item was successfully created.' }
        format.json { render json: @store_item, status: :created, location: @store_item }
      else
        format.html { render action: "new" }
        format.json { render json: @store_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_items/1
  # PUT /store_items/1.json
  def update
    @store_item = StoreItem.find(params[:id])

    respond_to do |format|
      if @store_item.update_attributes(params[:store_item])
        format.html { redirect_to @store_item, notice: 'Store item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_items/1
  # DELETE /store_items/1.json
  def destroy
    @store_item = StoreItem.find(params[:id])
    @store_item.destroy

    respond_to do |format|
      format.html { redirect_to store_items_url }
      format.json { head :no_content }
    end
  end
end
