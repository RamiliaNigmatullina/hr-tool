require "rails_helper"

describe Assessment do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:invites) }
  it { is_expected.to have_many(:feedbacks) }

  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :date }
  it { is_expected.to validate_presence_of :requested_role }
end
