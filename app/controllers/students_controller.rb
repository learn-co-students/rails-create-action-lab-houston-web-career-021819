class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    redirect_to Student.create(student_params[:student])
  end

  private

  def student_params
    params.permit(student: [:first_name, :last_name])
  end
end
