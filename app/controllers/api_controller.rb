class ApiController < ApplicationController
    #equivalent of authenticate_user of DEVISE
    before_action :doorkeeper_authorize!

    #Skip CSRF token for API requests 
    skip_before_action :verify_authenticity_token, raise: false

    # Response type 
    respond_to :json 

    private 

    #helper to get current user from auth token 
    def current_user 
        return unless doorkeeper_token
        @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
    end 
end
