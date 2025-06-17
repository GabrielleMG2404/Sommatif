class Cour < ApplicationRecord
	has_one :professeur
	belongs_to :student
	has_one :class_room
end
