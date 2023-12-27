class ExploreController < ApplicationController
    def search
    end
    def index
        @user = User.find_by(username: params[:search_query])
        if !@user 
            # render inline: "<h1> Error: User doesn't exist !! </h1>"
            # render js: "alert('User doesn't exist !! ');"
            render js: "var AUTH_TOKEN = #{form_authenticity_token.to_json}; alert('User doesn't exist!!');"

        end
    end
end
