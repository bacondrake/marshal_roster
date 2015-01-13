class WelcomeController < ApplicationController
  before_action :set_marshals, only: [:five_timers, :veterans, :newbies]

  def index
  end

  def five_timers
  end

  def newbies
    @brand_new = []
    @new_marshal = []

    # Sort relevant marshals into above arrays in order to
    # separate those who have marshalled 0 exams from the rest
    @marshals.each do |marshal|
      if marshal.exams.count < 4
        if marshal.exams.count == 0
          @brand_new.push(marshal)
        else
          @new_marshal.push(marshal)
        end
      end
    end
  end

  def veterans
  end

  private
    def set_marshals
      @exams = Exam.all
      @marshals = Ntcmarshal.all
    end
end
