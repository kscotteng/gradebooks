class CreateGradebooks < ActiveRecord::Migration
  def change
    create_table :gradebooks do |t|
      t.integer :student_id
      t.string :assignment_name
      t.integer :grade
      t.date :date

      t.timestamps null: false
    end
  end
end
