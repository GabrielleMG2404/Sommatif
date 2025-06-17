class CreateEvaluations < ActiveRecord::Migration[8.0]
  def change
    create_table :evaluations do |t|
      t.date :date_evaluation
      t.string :numero_eval
      t.string :materiel
      t.string :notes
      t.string :professeur_id
      t.string :student_id

      t.timestamps
    end
  end
end
