class TasksController < InheritedResources::Base
  enable_sync
  respond_to :js

  alias_method :resource_url, :collection_url

  def permitted_params
    params.permit(:task => [:title, :description])
  end
end
