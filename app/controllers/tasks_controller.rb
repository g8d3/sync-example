class TasksController < InheritedResources::Base
  enable_sync
  respond_to :json

  alias_method :resource_url, :collection_url

  def resource
    super
  rescue ActiveRecord::RecordNotFound
    @resource ||= Task.new
  end

  def permitted_params
    params.permit(:task => [:text])
  end
end
