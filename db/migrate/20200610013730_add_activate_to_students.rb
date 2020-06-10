class AddActivateToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean
    add_column :students, :default, :false
  end
end
