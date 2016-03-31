class Member < ActiveRecord::Base
  has_many :member_projects
  has_many :projects, through: :member_projects
end
