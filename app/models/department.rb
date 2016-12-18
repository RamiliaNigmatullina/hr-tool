class Department < ApplicationRecord
  has_many :users
  has_many :skills

  validates :title, presence: true
  validates :title, uniqueness: true
end
