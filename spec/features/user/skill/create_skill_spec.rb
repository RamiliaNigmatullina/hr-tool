require "rails_helper"

feature "Create Skill" do
  include_context "current user signed in"

  let(:skill_attributes) { attributes_for(:skill).slice(:description) }

  scenario "User creates skill" do
    visit skills_path

    click_link("Добавить навык")
    fill_in("Навык", with: skill_attributes)
    click_button("Сохранить")

    expect(page).to have_content("Навык был успешно создан.")
  end
end
