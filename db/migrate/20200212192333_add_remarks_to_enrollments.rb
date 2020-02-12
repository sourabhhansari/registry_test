class AddRemarksToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :remarks, :text
  end
end
