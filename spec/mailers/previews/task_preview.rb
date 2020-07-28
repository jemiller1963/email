# Preview all emails at http://localhost:3000/rails/mailers/task
class TaskPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/task/task_created
  def task_created
    TaskMailer.task_created
  end

  # Preview this email at http://localhost:3000/rails/mailers/task/task_completed
  def task_completed
    TaskMailer.task_completed
  end

end
