require "rails_helper"

describe SkillFeedback do
  it { should belong_to(:skill) }
  it { should belong_to(:feedback) }

  it { is_expected.to validate_presence_of :score }
  it { is_expected.to validate_presence_of :comment }
  it { is_expected.to validate_presence_of :skill }
end
