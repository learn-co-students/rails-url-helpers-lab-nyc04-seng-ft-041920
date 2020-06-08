class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student_active = Student.find(params[:id])
    if @student_active.active
      @student_active.update(active: false)
    else
      @student_active.update(active: true)
    end

    redirect_to action: "show", id: @student_active.id
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end
end