json.extract! task, :id, :body, :project_id, :created_at, :updated_at, :complete
json.url project_task_url(task.project, task, format: :json)
