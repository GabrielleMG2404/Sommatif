require "application_system_test_case"

class CoursTest < ApplicationSystemTestCase
  setup do
    @cour = cours(:one)
  end

  test "visiting the index" do
    visit cours_url
    assert_selector "h1", text: "Cours"
  end

  test "should create cour" do
    visit cours_url
    click_on "New cour"

    fill_in "Programm cours", with: @cour.Programm_cours
    fill_in "Time", with: @cour.Time
    fill_in "Class room", with: @cour.class_room_id
    fill_in "Nom cours", with: @cour.nom_cours
    fill_in "Professeur", with: @cour.professeur_id
    fill_in "Student", with: @cour.student_id
    click_on "Create Cour"

    assert_text "Cour was successfully created"
    click_on "Back"
  end

  test "should update Cour" do
    visit cour_url(@cour)
    click_on "Edit this cour", match: :first

    fill_in "Programm cours", with: @cour.Programm_cours
    fill_in "Time", with: @cour.Time.to_s
    fill_in "Class room", with: @cour.class_room_id
    fill_in "Nom cours", with: @cour.nom_cours
    fill_in "Professeur", with: @cour.professeur_id
    fill_in "Student", with: @cour.student_id
    click_on "Update Cour"

    assert_text "Cour was successfully updated"
    click_on "Back"
  end

  test "should destroy Cour" do
    visit cour_url(@cour)
    click_on "Destroy this cour", match: :first

    assert_text "Cour was successfully destroyed"
  end
end
