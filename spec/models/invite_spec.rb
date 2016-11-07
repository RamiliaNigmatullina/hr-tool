require "rails_helper"

describe Invite do
  it { should belong_to(:user) }
  it { should belong_to(:assessment) }

  it { is_expected.to validate_presence_of :user }
end
