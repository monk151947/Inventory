class StoresController < ApplicationController


  def index
    @stores = Store.all
     @store = Store.new

  end


  def edit
    @store = Store.find(params[:id])
   respond_to do |format|
      format.html { redirect_to stores_url }
      format.js
    end
  end

  def create
    @store = Store.new(params[:store])

    respond_to do |format|
      if @store.save
        format.html { redirect_to stores_url, notice: 'Store was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js { render action: "new" }
      end
    end
  end

 def update
    @store = Store.find(params[:id])

    respond_to do |format|
      if @store.update_attributes(params[:store])
        format.html { redirect_to stores_url, notice: 'Store was successfully updated.' }
        format.js
      else
        format.html { render action: "new" }
        format.js { render action: "new" }
      end
    end
  end


  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url }
      format.js
    end
  end
end

