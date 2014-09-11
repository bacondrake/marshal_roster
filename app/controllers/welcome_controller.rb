class WelcomeController < ApplicationController
  before_action :set_marshals, only: [:five_timers, :veterans, :newbies]

  def index
  end

  def five_timers
  end

  def newbies
  end

  def veterans
  end

  private
    def set_marshals
      @exams = Exam.all
      @marshals = Ntcmarshal.all
    end
end
