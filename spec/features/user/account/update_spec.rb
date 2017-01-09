require "rails_helper"

feature "Update Account" do
  include_context "hr signed in"

  background do
    visit edit_user_registration_path(current_user)
  end

  scenario "User updates account with valid data" do
    fill_form(:user, :edit, full_name: "New Name")
    click_on "Сохранить"

    expect(page).to have_content("New Name")
  end

  scenario "User enters not matched passwords" do
    fill_form(:user, :edit, password: "qwerty", password_confirmation: "123123")
    click_on "Сохранить"

    expect(page).to have_content("пароли не совпадают")
  end
end
