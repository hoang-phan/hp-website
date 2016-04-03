class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :member_projects
  has_many :members, through: :member_projects
end
