class Task < ApplicationRecord
  belongs_to :project

  has_many :project_users
  has_many :projects, through: :project_users

end
