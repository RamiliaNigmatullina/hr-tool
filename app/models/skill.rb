class Skill < ActiveRecord::Base
  belongs_to :department

  validates :description, presence: true
end
