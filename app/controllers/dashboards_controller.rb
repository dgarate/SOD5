class DashboardsController < InheritedResources::Base
  
  # private

  #   def dashboard_params
  #     params.require(:dashboard).permit()
  #   end
    
    def index
      @conflicts_by_cycle = Conflict.group_cycle  
      @conflicts_users_count = Conflict.group_conflict_user_period
    end
    

end
