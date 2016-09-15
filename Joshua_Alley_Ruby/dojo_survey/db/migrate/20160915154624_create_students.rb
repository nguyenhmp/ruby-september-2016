class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :location
      t.string :language
      t.string :comment

      t.timestamps
    end
  end
end
