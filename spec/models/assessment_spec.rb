require "rails_helper"

describe Assessment do
  it { should belong_to(:user) }
  it { should have_many(:invites) }
  it { should have_many(:feedbacks) }
end
