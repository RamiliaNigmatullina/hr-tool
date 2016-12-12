class SkillFeedback < ActiveRecord::Base
  belongs_to :feedback
  belongs_to :skill

  validates :skill, presence: true
end
