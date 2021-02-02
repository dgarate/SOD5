class DashboardsController < InheritedResources::Base
  
  # private

  #   def dashboard_params
  #     params.require(:dashboard).permit()
  #   end
    
    def index
      @conflicts_by_cycle = Conflict.group_cycle  
      # @users_with_conflicts = UserAccess.conflicts
    end
    

end
