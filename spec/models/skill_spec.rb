require "rails_helper"

describe Skill do
  it { is_expected.to belong_to(:department) }

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :role }
  it { is_expected.to validate_presence_of :description }
end
