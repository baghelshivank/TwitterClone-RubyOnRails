class RepliesController < ApplicationController

    def index
    end
    def new
    end

    def create
        @post = Post.find(params[:post_id])
        @reply = @post.replies.create(reply_params)
   
        respond_to do |format|
          if @reply.save
            format.html { redirect_to post_path(@post), notice: "Reply was successfully created." }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end
    def destroy 
        @post = Post.find(params[:post_id])
        @reply = @post.replies.find(params[:id])
        @reply.destroy
        redirect_to post_path(@post), status: :see_other
    end

    private
        def comment_params
            params.require(:reply).permit(:post_id, :user_id, :reply_body)
       end
       
end
