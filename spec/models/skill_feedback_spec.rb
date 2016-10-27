require "rails_helper"

describe SkillFeedback do
  it { should belong_to(:skill) }
  it { should belong_to(:feedback) }
end
