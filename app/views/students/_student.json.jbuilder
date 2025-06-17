json.extract! student, :id, :nom_student, :date_naissance, :numero_telephone, :email, :grade, :numero_parents, :cours_id, :professeur_id, :class_room_id, :created_at, :updated_at
json.url student_url(student, format: :json)
