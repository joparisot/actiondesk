class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :learnmore, :about ]

  def home
  end

  def about
  end

  def learnmore
    @lead = Lead.new
  end
end
