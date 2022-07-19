class FixtureForm
  include PageObject
  include DataMagic

  page_url('https://forms.gle/1H6DfymAnVmU1oJB6')
  text_field(:name, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:enroll_no, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:email, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_area(:address, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div[2]/textarea')
  text_field(:phone_number, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[5]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:cgpa, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[6]/div/div/div[2]/div/div[1]/div/div[1]/input')
  div(:submit_button, :xpath => '//*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div')

  def visit_form
    goto
  end

  def filling_the_fields
    populate_page_with data_for :google_form_fixtures
    sleep 2
  end

  def submit
    submit_button_element.click
    sleep 2
  end
end