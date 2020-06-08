class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def student_activate
    if self.active
      self.active = false
    else
      self.active = true
    end
  end

end