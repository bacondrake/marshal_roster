class WelcomeController < ApplicationController
  def index
  end

  def five_timers
    @marshals = Ntcmarshal.all
  end
end
