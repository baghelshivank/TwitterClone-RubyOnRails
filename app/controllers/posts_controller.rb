class PostsController < ApplicationController
    before_action :get_post, only: [:show, :edit, :update, :destroy]    

    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
        render "new"
    end
    def create
        @post = Post.new(post_params)    
        if @post.save
          redirect_to @post
        else
          render :new, status: :unprocessable_entity
        end
    end
    def show
        @reply = @post.replies.build
        render "show"
    end
    def edit
    end
    def update
        if @post.update(post_params)
            puts "Running UPDATE action in controller ================================"
            redirect_to @post
          else
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @post.destroy
        redirect_to root_path, status: :see_other
    end
    
    private
        def get_post
            @post = Post.find(params[:id])
        end
        def post_params
            params.require(:post).permit(:user_id, :post_body)
        end
end
