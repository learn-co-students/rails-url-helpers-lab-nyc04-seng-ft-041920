class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student    
    @student.active = !@student.active      # Reverses the boolean of current active state
    @student.save                           # Saves the current student instance
    redirect_to student_path(@student)      # Redirects to the student SHOW page
  end

  private

    def set_student
      @student = Student.find(params[:id])  # Grabs the ID of current instance of student
    end
end