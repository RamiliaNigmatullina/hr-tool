class InviteDecorator < ApplicationDecorator
  delegate_all
  decorates_association :assessment
end
