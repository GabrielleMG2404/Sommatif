require "application_system_test_case"

class ProfesseursTest < ApplicationSystemTestCase
  setup do
    @professeur = professeurs(:one)
  end

  test "visiting the index" do
    visit professeurs_url
    assert_selector "h1", text: "Professeurs"
  end

  test "should create professeur" do
    visit professeurs_url
    click_on "New professeur"

    fill_in "Date naissance", with: @professeur.date_naissance
    fill_in "Email", with: @professeur.email
    fill_in "Nom professeur", with: @professeur.nom_professeur
    fill_in "Numero telephone", with: @professeur.numero_telephone
    click_on "Create Professeur"

    assert_text "Professeur was successfully created"
    click_on "Back"
  end

  test "should update Professeur" do
    visit professeur_url(@professeur)
    click_on "Edit this professeur", match: :first

    fill_in "Date naissance", with: @professeur.date_naissance
    fill_in "Email", with: @professeur.email
    fill_in "Nom professeur", with: @professeur.nom_professeur
    fill_in "Numero telephone", with: @professeur.numero_telephone
    click_on "Update Professeur"

    assert_text "Professeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Professeur" do
    visit professeur_url(@professeur)
    click_on "Destroy this professeur", match: :first

    assert_text "Professeur was successfully destroyed"
  end
end
