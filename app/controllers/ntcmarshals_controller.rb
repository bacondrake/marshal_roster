class NtcmarshalsController < ApplicationController
  before_action :set_marshal, only: [:show, :edit, :update, :destroy]
  before_action :set_exams,   only: [:show, :edit]
  before_action :logged_in_user

  def new
    @ntcmarshal = Ntcmarshal.new
  end

  def create
    @ntcmarshal = Ntcmarshal.new(ntcmarshal_params)
    if @ntcmarshal.save
      redirect_to ntcmarshals_path, notice: "New marshal successfully created"
    else
      render 'new'
    end
  end

  def index
    @ntcmarshals = Ntcmarshal.order("name").paginate(:page => params[:page], :per_page => 20)
  end

  def show
  end

  def edit
  end

  def update
    params[:ntcmarshal][:exam_ids] ||= []

    if @ntcmarshal.update_attributes(ntcmarshal_params)
      redirect_to ntcmarshal_path(@ntcmarshal), notice: "Marshal has been updated"
    else
      render 'edit'
    end
  end

  def destroy
    @ntcmarshal.destroy

    redirect_to ntcmarshals_path, notice: "Marshal has been removed"
  end

  private
    def ntcmarshal_params
      params.require(:ntcmarshal).permit(
        :name,
        :address,
        :phone,
        :email,
        {:exam_ids => []}
      )
    end

    def set_marshal
      @ntcmarshal = Ntcmarshal.find(params[:id])
    end

    def set_exams
      @exams = Exam.order("date desc")
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "You must log in to view this page"
        redirect_to login_url
      end
    end
end
