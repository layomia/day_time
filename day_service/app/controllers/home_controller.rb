class HomeController < ApplicationController
    def index
        render json: {'day': Time.now.strftime("%A")}
    end
end