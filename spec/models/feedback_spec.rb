require "rails_helper"

describe Feedback do
  it { should belong_to(:user) }
  it { should belong_to(:assessment) }
  it { should have_many(:skill_feedbacks) }

  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :assessment }
end
