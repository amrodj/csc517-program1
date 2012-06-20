class DummyUsersController < ApplicationController
  # GET /dummy_users
  # GET /dummy_users.json
  def index
    @dummy_users = DummyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dummy_users }
    end
  end

  # GET /dummy_users/1
  # GET /dummy_users/1.json
  def show
    @dummy_user = DummyUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dummy_user }
    end
  end

  # GET /dummy_users/new
  # GET /dummy_users/new.json
  def new
    @dummy_user = DummyUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dummy_user }
    end
  end

  # GET /dummy_users/1/edit
  def edit
    @dummy_user = DummyUser.find(params[:id])
  end

  # POST /dummy_users
  # POST /dummy_users.json
  def create
    @dummy_user = DummyUser.new(params[:dummy_user])

    respond_to do |format|
      if @dummy_user.save
        format.html { redirect_to @dummy_user, notice: 'Dummy user was successfully created.' }
        format.json { render json: @dummy_user, status: :created, location: @dummy_user }
      else
        format.html { render action: "new" }
        format.json { render json: @dummy_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dummy_users/1
  # PUT /dummy_users/1.json
  def update
    @dummy_user = DummyUser.find(params[:id])

    respond_to do |format|
      if @dummy_user.update_attributes(params[:dummy_user])
        format.html { redirect_to @dummy_user, notice: 'Dummy user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dummy_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy_users/1
  # DELETE /dummy_users/1.json
  def destroy
    @dummy_user = DummyUser.find(params[:id])
    @dummy_user.destroy

    respond_to do |format|
      format.html { redirect_to dummy_users_url }
      format.json { head :no_content }
    end
  end
end
