class IndentsController < ApplicationController
  # GET /indents
  # GET /indents.json
  def index
    @indents = Indent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @indents }
    end
  end

  # GET /indents/1
  # GET /indents/1.json
  def show
    @indent = Indent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indent }
    end
  end

  # GET /indents/new
  # GET /indents/new.json
  def new
    @indent = Indent.new
    2.times { @indent.indent_items.build }
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indent }
    end
  end

  # GET /indents/1/edit
  def edit
    @indent = Indent.find(params[:id])
  end

  # POST /indents
  # POST /indents.json
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

  # PUT /indents/1
  # PUT /indents/1.json
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

  # DELETE /indents/1
  # DELETE /indents/1.json
  def destroy
    @indent = Indent.find(params[:id])
    @indent.destroy

    respond_to do |format|
      format.html { redirect_to indents_url }
      format.json { head :no_content }
    end
  end
end

