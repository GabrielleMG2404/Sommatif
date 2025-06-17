class CreateInscriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :inscriptions do |t|
      t.date :date_inscription
      t.string :student_id
      t.string :paiement

      t.timestamps
    end
  end
end
