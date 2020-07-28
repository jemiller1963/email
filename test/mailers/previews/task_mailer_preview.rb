class TaskMailerPreview < ActionMailer::Preview

  def task_created
    TaskMailer.with(task: Task.last, user: User.first, author: User.last).task_created
  end

  def task_completed
    TaskMailer.with(task: Task.last, user: User.first, author: User.last).task_completed
  end

end
