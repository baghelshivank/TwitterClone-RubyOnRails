class TwitterLandingPageController < ApplicationController
    def index
        if user_signed_in?
            redirect_to home_index_path
            else
                render "index"
        end
    end
end
