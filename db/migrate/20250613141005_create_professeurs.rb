class CreateProfesseurs < ActiveRecord::Migration[8.0]
  def change
    create_table :professeurs do |t|
      t.string :nom_professeur
      t.date :date_naissance
      t.string :numero_telephone
      t.string :email

      t.timestamps
    end
  end
end
