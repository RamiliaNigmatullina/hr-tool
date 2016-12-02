require "rails_helper"

describe Skill do
  it { should belong_to(:department) }

  it { is_expected.to validate_presence_of :description }
end
