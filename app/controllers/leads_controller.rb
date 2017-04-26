class LeadsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]



def new
  @lead = Lead.new
end

def create

end

end
