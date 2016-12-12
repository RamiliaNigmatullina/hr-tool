require "rails_helper"

describe Assessment do
  it { should belong_to(:user) }
  it { should have_many(:invites) }
  it { should have_many(:feedbacks) }

  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :date }
  it { is_expected.to validate_presence_of :requested_role }
end
