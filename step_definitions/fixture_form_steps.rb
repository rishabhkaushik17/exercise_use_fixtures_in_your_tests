require_relative '../pages/fixtures_form'

Given(/^User is on the google form$/) do
  @form = FixtureForm.new(@browser)
  @form.visit_form
end

When(/^User fills the fields in the google form$/) do
  @form.filling_the_fields
end

Then(/^Form should submit$/) do
  @form.submit
end