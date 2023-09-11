require 'rails_helper'

RSpec.describe "the deparment index" do
  it "List of departments and their employees" do
    department_1 = Department.create(name:"IT", floor:"Basement")
    department_2 = Department.create(name:"Sales", floor:"52")

    moss = Employee.create(name:"Moss", level:1, department_id:department_1.id)
    kathy = Employee.create(name:"Kathy", level:52, department_id:department_2.id)

    visit('/departments')

    expect(page).to have_content("IT")
    expect(page).to have_content("Basement")
    expect(page).to have_content("Sales")
    expect(page).to have_content("52")
    expect(page).to have_content("Moss")
    expect(page).to have_content("Kathy")
  end
end