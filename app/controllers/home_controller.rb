class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  

  def index
    @graph_values = Conflict.group_cycle  
  end
  
end
