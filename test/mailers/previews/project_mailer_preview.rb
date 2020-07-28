class ProjectMailerPreview < ActionMailer::Preview

  def user_added_to_project
    ProjectMailer.with(project: Project.last, 
                       user: User.first, 
                       author: User.last).user_added_to_project
  end

end
