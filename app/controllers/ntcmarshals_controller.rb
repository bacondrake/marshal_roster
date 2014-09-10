class NtcmarshalsController < ApplicationController
  before_action :set_marshal, only: [:show, :edit, :update, :destroy]

  def new
    @ntcmarshal = Ntcmarshal.new
  end

  def create
    @ntcmarshal = Ntcmarshal.new(ntcmarshal_params)
    if @ntcmarshal.save
      redirect_to ntcmarshals_path
    else
      render 'new'
    end
  end

  def index
    @ntcmarshals = Ntcmarshal.order("name").paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @exams = Exam.all
  end

  def edit
    @exams = Exam.all
  end

  def update
    params[:ntcmarshal][:exam_ids] ||= []

    if @ntcmarshal.update_attributes(ntcmarshal_params)
      redirect_to ntcmarshals_path
    else
      render 'edit'
    end
  end

  def destroy
    @ntcmarshal.destroy

    redirect_to ntcmarshals_path
  end

  private
    def ntcmarshal_params
      params.require(:ntcmarshal).permit(
        :name,
        {:exam_ids => []}
      )
    end

    def set_marshal
      @ntcmarshal = Ntcmarshal.find(params[:id])
    end
end
