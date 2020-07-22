class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy


  def author(user)
    projects_users.where(user: user)
  end
end
