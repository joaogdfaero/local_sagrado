require "application_system_test_case"

class LocalsTest < ApplicationSystemTestCase
  setup do
    @local = locals(:one)
  end

  test "visiting the index" do
    visit locals_url
    assert_selector "h1", text: "Locals"
  end

  test "should create local" do
    visit locals_url
    click_on "New local"

    fill_in "Contato", with: @local.contato
    fill_in "Descricao", with: @local.descricao
    fill_in "Eventos", with: @local.eventos
    fill_in "Localizacao", with: @local.localizacao
    fill_in "Nome", with: @local.nome
    fill_in "Religiao denominacao", with: @local.religiao_denominacao
    fill_in "Tipo", with: @local.tipo
    click_on "Create Local"

    assert_text "Local was successfully created"
    click_on "Back"
  end

  test "should update Local" do
    visit local_url(@local)
    click_on "Edit this local", match: :first

    fill_in "Contato", with: @local.contato
    fill_in "Descricao", with: @local.descricao
    fill_in "Eventos", with: @local.eventos
    fill_in "Localizacao", with: @local.localizacao
    fill_in "Nome", with: @local.nome
    fill_in "Religiao denominacao", with: @local.religiao_denominacao
    fill_in "Tipo", with: @local.tipo
    click_on "Update Local"

    assert_text "Local was successfully updated"
    click_on "Back"
  end

  test "should destroy Local" do
    visit local_url(@local)
    click_on "Destroy this local", match: :first

    assert_text "Local was successfully destroyed"
  end
end
