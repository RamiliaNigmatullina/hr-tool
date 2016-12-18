require "rails_helper"

describe SkillFeedback do
  it { is_expected.to belong_to(:skill) }
  it { is_expected.to belong_to(:feedback) }

  it { is_expected.to validate_presence_of :skill }
end
