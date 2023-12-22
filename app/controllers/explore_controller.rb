class ExploreController < ApplicationController
    def search
    end
    def index
        @user = User.find_by(username: params[:search_query])
    end
end
