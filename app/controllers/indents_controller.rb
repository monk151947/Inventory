class IndentsController < ApplicationController
 
  def index
    @indents = Indent.all

  end

  def show
    @indent = Indent.find(params[:id],:include=> :indent_items)

  end

  def new
    @indent = Indent.new
    2.times { @indent.indent_items.build }
   
  end

 
  def edit
    @indent = Indent.find(params[:id])
  end

 
  def create
    @indent = Indent.new(params[:indent])

    respond_to do |format|
      if @indent.save
        format.html { redirect_to @indent, notice: 'Indent was successfully created.' }
        format.json { render json: @indent, status: :created, location: @indent }
      else
        format.html { render action: "new" }
        format.json { render json: @indent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @indent = Indent.find(params[:id])

    respond_to do |format|
      if @indent.update_attributes(params[:indent])
        format.html { redirect_to @indent, notice: 'Indent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indent.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @indent = Indent.find(params[:id])
    @indent.destroy
  end
end

