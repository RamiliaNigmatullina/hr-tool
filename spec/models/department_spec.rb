require "rails_helper"

describe Department do
  it { is_expected.to have_many(:users) }
  it { is_expected.to have_many(:skills) }

  it { is_expected.to validate_presence_of :title }
end
