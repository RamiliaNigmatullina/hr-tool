class Department < ActiveRecord::Base
  has_many :users
  has_many :skills

  validates :title, presence: true
end
