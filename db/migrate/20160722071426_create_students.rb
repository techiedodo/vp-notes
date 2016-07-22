class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.references :tutor, foreign_key: true, index: true 

      t.timestamps
    end
  end
end
