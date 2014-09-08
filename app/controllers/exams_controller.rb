class ExamsController < ApplicationController
  
  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path
    else
      render 'new'
    end
  end

  def index
    @exams = Exam.order('date desc').paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @exam = Exam.find(params[:id])
    @marshals = Ntcmarshal.all
  end

  def edit
    @exam = Exam.find(params[:id])
    @ntcmarshals = Ntcmarshal.all
    @ntcmarshals.order!('name asc')
  end

  def update
    params[:exam][:ntcmarshal_ids] ||= []
    @exam = Exam.find(params[:id])

    if @exam.update_attributes(exam_params)
      redirect_to exams_path
    else
      render 'edit'
    end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy

    redirect_to exams_path
  end

  private
    def exam_params
      params.require(:exam).permit(
        :date,
        {:ntcmarshal_ids => []}
      )
    end
end
