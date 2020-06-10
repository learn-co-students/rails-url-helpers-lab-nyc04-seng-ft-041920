class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
  end
  
  
  def update
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

#   def update
#     @student = Student.find(params[:id])
#     st_params = params.require(:st).permit(:active)
#     @student.update(st_params)

#     redirect_to student_path(@student)
# end
  
  
  
  
  private

    def set_student
      @student = Student.find(params[:id])
    end

    
end