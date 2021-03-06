class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path, notice: "New session successfully created"
    else
      render 'new'
    end
  end

  def index
    @exams = Exam.order('date desc').paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @marshals = Ntcmarshal.all
  end

  def edit
    @ntcmarshals = Ntcmarshal.all
    @ntcmarshals.order!('name asc')
  end

  def update
    params[:exam][:ntcmarshal_ids] ||= []

    if @exam.update_attributes(exam_params)
      redirect_to exam_path, notice: "Session has been updated"
    else
      render 'edit'
    end
  end

  def destroy
    @exam.destroy

    redirect_to exams_path, notice: "Session has been removed"
  end

  private
    def exam_params
      params.require(:exam).permit(
        :date,
        :name,
        {:ntcmarshal_ids => []}
      )
    end

    def set_exam
      @exam = Exam.find(params[:id])
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "You must log in to view this page"
        redirect_to login_url
      end
    end
end
