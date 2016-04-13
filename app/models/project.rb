class Project < ActiveRecord::Base
  has_many :member_projects
  has_many :members, through: :member_projects

  MIN_MONTH = 1
  MAX_MONTH = 12
  MIN_YEAR = 2000
  MAX_YEAR = 2199

  validates :name, presence: true
  validates :start_month, numericality: { greater_than_or_equal_to: MIN_MONTH, less_than_or_equal_to: MAX_MONTH }
  validates :start_year, numericality: { greater_than_or_equal_to: MIN_YEAR, less_than_or_equal_to: MAX_YEAR }
end
