class Member < ActiveRecord::Base
  validates :name, presence: true

  has_many :member_projects
  has_many :projects, through: :member_projects
end
