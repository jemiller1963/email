class Project < ApplicationRecord
  belongs_to :user

  has_many :project_users
  has_many :users, through: :project_users

  has_many :tasks, dependent: :destroy

  def author(user)
    project_users.where(user: user)
  end
end
