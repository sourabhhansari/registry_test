class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :registry, foreign_key: true
      t.references :coordinator, foreign_key: true
      t.references :participant, foreign_key: true

      t.timestamps
    end
  end
end
