class ApplicantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)
    @applicant.save
    redirect_to root_path
  end

  private

  def applicant_params
    params.require(:applicant).permit(:linkedin_url, :github_url, :motivation, :email_address)
  end

end
