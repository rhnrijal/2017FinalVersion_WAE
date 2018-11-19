class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.references :user, foreign_key: true
      t.references :course_offering, foreign_key: true
      t.string :grade

      t.timestamps
    end
  end
end
