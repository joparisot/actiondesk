class ApplicantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @applicant = Applicant.new
  end

  def create

  end

end
