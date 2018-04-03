class PhotenewsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @photenews = Photenew.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  def phote
    @posts = Post.all
  end


  def new
    @photenew = Photenew.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @photenew = Post.new(post_params)

    respond_to do |format|
      if @photenew.save
        format.html { redirect_to @photenew, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @photenew }
      else
        format.html { render :new }
        format.json { render json: @photenew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @photenew.update(post_params)
        format.html { redirect_to @photenew, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @photenew }
      else
        format.html { render :edit }
        format.json { render json: @photenew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @photenew.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @photenew = Photenew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:image, :title, :text)
    end
end
