class RepliesController < ApplicationController
  before_action :set_user, :set_video, except: [:index]
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # GET /replies
  # GET /replies.json
  def index
    @user = User.includes(:videos).find(params[:user_id])
    @video = @user.videos.find(params[:video_id])
    @replies = @video.replies
  end

  # GET /replies/1
  # GET /replies/1.json
  def show
  end

  # GET /replies/new
  def new
    @reply = @video.replies.new
  end

  # GET /replies/1/edit
  def edit
  end

  # POST /replies
  # POST /replies.json
  def create
    @reply = @video.replies.new(reply_params)

    respond_to do |format|
      if @reply.save
        format.html { redirect_to [@user, @video, @reply], notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: [@user, @video, @reply] }
      else
        format.html { render :new }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replies/1
  # PATCH/PUT /replies/1.json
  def update
    respond_to do |format|
      if @reply.update(reply_params)
        format.html { redirect_to [@user, @video, @reply], notice: 'Reply was successfully updated.' }
        format.json { render :show, status: :ok, location: [@user, @video, @reply] }
      else
        format.html { render :edit }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replies/1
  # DELETE /replies/1.json
  def destroy
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to [@user, @video, :replies], notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_video
      @video = @user.videos.find(params[:video_id])
    end

    def set_reply
      @reply = @video.replies.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:user_id, :video_id, :title, :content)
    end
end
