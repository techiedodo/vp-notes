class CreateTutoringSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :tutoring_sessions do |t|
      t.string :session_date
      t.references :student, foreign_key: true, index: true

      t.timestamps
    end
  end
end
