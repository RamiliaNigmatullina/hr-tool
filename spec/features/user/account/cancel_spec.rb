require "rails_helper"

feature "Cancel Account" do
  include_context "current user signed in"

  background do
    visit edit_user_registration_path(current_user)
  end

  scenario "User cancels account" do
    click_link "удалить свой аккаунт"

    expect(page).to have_content("Войти")

    fill_form(:user, current_user.attributes.slice(:email, :password))
    click_button "Войти"

    expect(page).to have_content("Неверный email или пароль.")
  end
end
