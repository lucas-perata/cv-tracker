class Api::V1::PagesController < ApplicationController
    def index 
        @application = Doorkeeper::Application.find_by(name: "Web Client") 
        @application = {
            name: @application.name, 
            client_id: @application.uid,
            client_secret: @application.secret,
        }
        render json: @application
    end 
end 
