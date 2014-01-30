class MembershipsController < ApplicationController

def create
  Membership.create!(membership_params)
  redirect_to :back
end
private

  def membership_params
    params.require(:membership).permit(:student_id, :course_id)
  end
end