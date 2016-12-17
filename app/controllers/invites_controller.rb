class InvitesController < ApplicationController
  before_action :authenticate_user!

  respond_to :html

  expose :invite
  expose_decorated :invites, -> { fetch_invites }

  def index
  end

  def create
    authorize invite

    Invites::Create.call(invite: invite)

    redirect_to :back
  end

  def destroy
    invite.destroy

    redirect_to :back
  end

  private

  def invite_params
    params.require(:invite).permit(:assessment_id, :user_id)
  end

  def fetch_invites
    current_user.invites.includes(:feedback, assessment: :user)
  end
end
