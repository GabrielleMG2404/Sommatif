class ClassRoom < ApplicationRecord
	belongs_to :professeur
	belongs_to :cour, class_name: "Cour", foreign_key: :cours_id
end
