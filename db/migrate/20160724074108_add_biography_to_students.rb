class AddBiographyToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :biography, :text
  end
end
