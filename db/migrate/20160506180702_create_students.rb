class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.integer :graduationYear
      t.timestamps null: false
    end
  end
end
