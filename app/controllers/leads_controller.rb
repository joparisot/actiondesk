class LeadsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]



  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    @lead.save
    redirect_to root_path
  end

  private

  def lead_params
    params.require(:lead).permit(:company, :phone_number, :email, :comment)
  end

end
