class DummyPostsController < ApplicationController
  # GET /dummy_posts
  # GET /dummy_posts.json
  def index
    #@dummy_posts = DummyPost.all
    @dummy_posts = DummyPost.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dummy_posts }
    end
  end

  # GET /dummy_posts/1
  # GET /dummy_posts/1.json
  def show
    @dummy_post = DummyPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dummy_post }
    end
  end

  # GET /dummy_posts/new
  # GET /dummy_posts/new.json
  def new
    @dummy_post = DummyPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dummy_post }
    end
  end

  # GET /dummy_posts/1/edit
  def edit
    @dummy_post = DummyPost.find(params[:id])
  end

  # POST /dummy_posts
  # POST /dummy_posts.json
  def create
    @dummy_post = DummyPost.new(params[:dummy_post])

    respond_to do |format|
      if @dummy_post.save
        format.html { redirect_to @dummy_post, notice: 'Dummy post was successfully created.' }
        format.json { render json: @dummy_post, status: :created, location: @dummy_post }
      else
        format.html { render action: "new" }
        format.json { render json: @dummy_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dummy_posts/1
  # PUT /dummy_posts/1.json
  def update
    @dummy_post = DummyPost.find(params[:id])

    respond_to do |format|
      if @dummy_post.update_attributes(params[:dummy_post])
        format.html { redirect_to @dummy_post, notice: 'Dummy post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dummy_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy_posts/1
  # DELETE /dummy_posts/1.json
  def destroy
    @dummy_post = DummyPost.find(params[:id])
    @dummy_post.destroy

    respond_to do |format|
      format.html { redirect_to dummy_posts_url }
      format.json { head :no_content }
    end
  end
end
