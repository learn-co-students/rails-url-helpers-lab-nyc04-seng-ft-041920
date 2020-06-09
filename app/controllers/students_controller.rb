class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @response = ''
    @student = Student.find(params[:id])
    @student.active ? @response += 'active' : @response += 'inactive'
  end

  def activate
    @student = Student.find(params[:id])
    @student.toggle(:active).save

    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
