require 'net/http'

class HomeController < ApplicationController
    def make_req(port)
        url = URI.parse('http://localhost:' + port)
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) {|http|
          http.request(req)
        }
        JSON.parse(res.body)
    end
    
    def index
        day = make_req('8081')['day']
        time = make_req('8082')['time']
        render json: {
            'day': day,
            'time': time,
        }
    end
end
