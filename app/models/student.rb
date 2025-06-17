class Student < ApplicationRecord
	has_many :professeur
	has_many :cour
	has_many :class_room
end
