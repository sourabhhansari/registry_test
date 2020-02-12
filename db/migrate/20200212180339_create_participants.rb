class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.references :registry, foreign_key: true

      t.timestamps
    end
  end
end
