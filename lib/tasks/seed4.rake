 require 'faker'
namespace :seed4 do 
	task :populate4 => :environment do 

		I18n.locale = :en
		Faker::Config.locale = :en
		15.times do 
			tt = ClassRoom.create(
				numero_classe: Faker::Number.number,
				professeur_id: Professeur.pluck(:id).sample,
				cours_id: Cour.pluck(:id).sample
				)
			#debugger
		end

		20.times do
			Cour.create(
				nom_cours: Faker::FunnyName.two_word_name,
				professeur_id: Faker::String.random,
				class_room_id: Faker::String.random,
				Time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: "%H:%M"),
				Programm_cours: Faker::FunnyName.two_word_name,
				student_id: Faker::String.random
				)
		end

		10.times do 
			e = Evaluation.create(
				date_evaluation: Faker::Date.backward(days: 10),
				numero_eval: Faker::Number.number,
				materiel: Faker::String.random,
				notes: Faker::Number.binary(digits: 2),
				professeur_id: Professeur.pluck(:id).sample,
				student_id: Student.pluck(:id).sample
				)
			#debugger
		end

		50.times do 
			Inscription.create(
				date_inscription: Faker::Date.backward(days: 20),
				student_id: Faker::String.random,
				paiement: Faker::Number.binary(digits: 6)
				)
		end

		30.times do 
			Professeur.create(
				nom_professeur: Faker::FunnyName.two_word_name,
				date_naissance: Faker::Date.between(from: "1930-01-01", to: "2000-12-31"),
				numero_telephone: Faker::PhoneNumber.phone_number,
				email: Faker::Internet.email
				)
		end

		50.times do 
			s = Student.create(
				nom_student: Faker::FunnyName.two_word_name,
				date_naissance: Faker::Date.between(from: "1930-01-01", to: "2000-12-31"),
				numero_telephone: Faker::PhoneNumber.phone_number,
				email: Faker::Internet.email,
				grade: Faker::Number.binary(digits:2),
				numero_parents: Faker::PhoneNumber.phone_number,
				cours_id: Cour.pluck(:id).sample,
				professeur_id: Professeur.pluck(:id).sample,
				class_room_id: ClassRoom.pluck(:id).sample
				)
			#debugger
		end
	end
end
