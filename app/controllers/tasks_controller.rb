class TasksController < InheritedResources::Base
  respond_to :html, :js

  def show
    super do |format|
      format.html { redirect_to tasks_path }
    end
  end

  def permitted_params
    params.permit(:task => [:title, :description])
  end
end
