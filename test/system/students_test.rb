require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Class room", with: @student.class_room_id
    fill_in "Cours", with: @student.cours_id
    fill_in "Date naissance", with: @student.date_naissance
    fill_in "Email", with: @student.email
    fill_in "Grade", with: @student.grade
    fill_in "Nom student", with: @student.nom_student
    fill_in "Numero parents", with: @student.numero_parents
    fill_in "Numero telephone", with: @student.numero_telephone
    fill_in "Professeur", with: @student.professeur_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Class room", with: @student.class_room_id
    fill_in "Cours", with: @student.cours_id
    fill_in "Date naissance", with: @student.date_naissance
    fill_in "Email", with: @student.email
    fill_in "Grade", with: @student.grade
    fill_in "Nom student", with: @student.nom_student
    fill_in "Numero parents", with: @student.numero_parents
    fill_in "Numero telephone", with: @student.numero_telephone
    fill_in "Professeur", with: @student.professeur_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
