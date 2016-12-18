require "rails_helper"

describe Invite do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:assessment) }

  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :assessment }
end
