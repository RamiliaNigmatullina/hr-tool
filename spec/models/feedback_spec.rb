require "rails_helper"

describe Feedback do
  it { should belong_to(:user) }
  it { should belong_to(:assessment) }
  it { should have_many(:skill_feedbacks) }
end
