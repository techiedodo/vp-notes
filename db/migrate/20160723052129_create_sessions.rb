class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :session_name
      t.references :student, foreign_key: true, index: true

      t.timestamps
    end
  end
end
