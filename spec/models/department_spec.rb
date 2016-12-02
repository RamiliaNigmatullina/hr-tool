require "rails_helper"

describe Department do
  it { should have_many(:users) }
  it { should have_many(:skills) }

  it { is_expected.to validate_presence_of :title }
end
