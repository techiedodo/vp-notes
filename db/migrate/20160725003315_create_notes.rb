class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :summary
      t.text :achievement
      t.text :what_next
      t.text :recommendation
      t.integer :rate
      t.date :date_session
      t.time :tm_start
      t.time :tm_end
      t.references :tutoring_session, foreign_key: true, index: true

      t.timestamps
    end
  end
end
