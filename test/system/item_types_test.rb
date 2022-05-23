require "application_system_test_case"

class ItemTypesTest < ApplicationSystemTestCase
  setup do
    @item_type = item_types(:one)
  end

  test "visiting the index" do
    visit item_types_url
    assert_selector "h1", text: "Item types"
  end

  test "should create item type" do
    visit item_types_url
    click_on "New item type"

    fill_in "Name", with: @item_type.name
    click_on "Create Item type"

    assert_text "Item type was successfully created"
    click_on "Back"
  end

  test "should update Item type" do
    visit item_type_url(@item_type)
    click_on "Edit this item type", match: :first

    fill_in "Name", with: @item_type.name
    click_on "Update Item type"

    assert_text "Item type was successfully updated"
    click_on "Back"
  end

  test "should destroy Item type" do
    visit item_type_url(@item_type)
    click_on "Destroy this item type", match: :first

    assert_text "Item type was successfully destroyed"
  end
end
