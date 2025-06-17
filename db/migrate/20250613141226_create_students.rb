class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :nom_student
      t.date :date_naissance
      t.string :numero_telephone
      t.string :email
      t.string :grade
      t.string :numero_parents
      t.string :cours_id
      t.string :professeur_id
      t.string :class_room_id

      t.timestamps
    end
  end
end
