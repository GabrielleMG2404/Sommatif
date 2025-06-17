class CreateCours < ActiveRecord::Migration[8.0]
  def change
    create_table :cours do |t|
      t.string :nom_cours
      t.string :professeur_id
      t.string :class_room_id
      t.time :Time
      t.string :Programm_cours
      t.string :student_id

      t.timestamps
    end
  end
end
