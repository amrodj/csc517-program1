class FinalDummiesController < ApplicationController
  # GET /final_dummies
  # GET /final_dummies.json
  def index
    @final_dummies = FinalDummy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @final_dummies }
    end
  end

  # GET /final_dummies/1
  # GET /final_dummies/1.json
  def show
    @final_dummy = FinalDummy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @final_dummy }
    end
  end

  # GET /final_dummies/new
  # GET /final_dummies/new.json
  def new
    @final_dummy = FinalDummy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @final_dummy }
    end
  end

  # GET /final_dummies/1/edit
  def edit
    @final_dummy = FinalDummy.find(params[:id])
  end

  # POST /final_dummies
  # POST /final_dummies.json
  def create
    @final_dummy = FinalDummy.new(params[:final_dummy])

    respond_to do |format|
      if @final_dummy.save
        format.html { redirect_to @final_dummy, notice: 'Final dummy was successfully created.' }
        format.json { render json: @final_dummy, status: :created, location: @final_dummy }
      else
        format.html { render action: "new" }
        format.json { render json: @final_dummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /final_dummies/1
  # PUT /final_dummies/1.json
  def update
    @final_dummy = FinalDummy.find(params[:id])

    respond_to do |format|
      if @final_dummy.update_attributes(params[:final_dummy])
        format.html { redirect_to @final_dummy, notice: 'Final dummy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @final_dummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_dummies/1
  # DELETE /final_dummies/1.json
  def destroy
    @final_dummy = FinalDummy.find(params[:id])
    @final_dummy.destroy

    respond_to do |format|
      format.html { redirect_to final_dummies_url }
      format.json { head :no_content }
    end
  end
end
