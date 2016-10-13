class Feedback < ActiveRecord::Base
  has_many :skill_feedbacks, dependent: :destroy

  belongs_to :assessment

  accepts_nested_attributes_for :skill_feedbacks
end
