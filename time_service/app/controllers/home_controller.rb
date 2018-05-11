class HomeController < ApplicationController
    def index
        render json: {'time': Time.now.strftime("%Y/%m/%d %H:%M")}
    end
end
