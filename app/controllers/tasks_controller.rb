class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_project

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end



  # GET /tasks/1/edit
  def edit
  end

  # POST /ta
  # POST /tasks.json
  def create
    @task = @project.tasks.create(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_path(@project), notice: 'Task was successfully created.' }
      else
        format.html { redirect_to project_path(@project) }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @task = @project.tasks.find(params[:task][:id])

    respond_to do |format|
      if params[:task][:complete] == true
        @task.update(complete: true)
      else
        @task.update(complete: false)
      end


      if @task.update(task_params)
        format.json { render :show, status: :ok, location: project_path(@project) }
      else
        format.html { redirect_to project_path(@project) }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:body, :project_id, :complete, :id)
  end
end
