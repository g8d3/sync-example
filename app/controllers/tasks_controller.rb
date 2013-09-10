class TasksController < InheritedResources::Base
  enable_sync only: [:create, :update, :destroy]
  respond_to :js

  def show
    super do |format|
      format.html { redirect_to tasks_path }
    end
  end

  def permitted_params
    params.permit(:task => [:title, :description])
  end
end
