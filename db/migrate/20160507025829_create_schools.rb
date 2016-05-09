class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :addressStreet
      t.string :addressCity
      t.string :addressState
      t.string :addressZip
      t.string :poNumber

      t.timestamps null: false
    end
  end
end
