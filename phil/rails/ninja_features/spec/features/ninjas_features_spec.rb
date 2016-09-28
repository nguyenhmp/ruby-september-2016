require 'rails_helper'

RSpec.feature "Register" do
    scenario "Ninjas are prompted with a form" do
        visit "/"
        expect(page).to have_field('name')
        expect(page).to have_field('description')
    end

    scenario "Ninjas can submit complete form" do
        visit "/"
        fill_in "name", with: "Steve"
        fill_in "description", with: "A ninja"
        click_button "Submit"
        expect(page).to have_text("Form successfully submitted!")
    end

    scenario "Ninjas can't submit incomplete form" do
        visit "/"
        fill_in "name", with: "Paul"
        click_button "Submit"
        expect(page).to have_text("Failed to submit form")
    end
end
