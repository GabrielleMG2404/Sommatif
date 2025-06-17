class CreateClassRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :class_rooms do |t|
      t.string :numero_classe
      t.string :professeur_id
      t.string :cours_id

      t.timestamps
    end
  end
end
