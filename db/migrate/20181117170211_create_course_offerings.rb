class CreateCourseOfferings < ActiveRecord::Migration[5.2]
  def change
    create_table :course_offerings do |t|
      t.integer :year
      t.string :semester
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
