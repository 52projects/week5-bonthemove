require 'gowalla'
require 'yaml'

class HomeController < ApplicationController
  def index
    gowalla = Gowalla::Client.new(:username => USER_NAME, :password => PASSWORD, :api_key => GOWALLA_KEY)
  
    @user = gowalla.user('bryanmikaelian')
    @checkins = gowalla.connection.get("/users/bryanmikaelian/checkins").body.events
  end

end
