class MembershipsController < ApplicationController

def update
  membership = Membership.find(params[:id])
  membership.update_attributes(final_grade: membership_params[:final_grade])
  redirect_to :back
end

def create
  Membership.create!(membership_params)
  redirect_to :back
end
private

  def membership_params
    params.require(:membership).permit(:student_id, :course_id, :final_grade)
  end
end