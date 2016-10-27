require "rails_helper"

describe Invite do
  it { should belong_to(:user) }
  it { should belong_to(:assessment) }
end
