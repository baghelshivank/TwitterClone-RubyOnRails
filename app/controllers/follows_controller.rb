class FollowsController < ApplicationController
    def create
        @follow = Follow.new(follow_params)
        @follow.save
        redirect_back(fallback_location: root_path)
    end
    def destroy
        # debugger
        @follow = Follow.find_by(user_id: current_user.id, following_id: params[:id])
        @follow.destroy
        # redirect_back(fallback_location: root_path)
    end
    private
      def follow_params
       params.permit(:user_id, :following_id)
      end
end
