require 'rails_helper'

RSpec.describe "the employee show" do
  it "List of employees and tickets" do
    department_1 = Department.create(name:"IT", floor:"Basement")
    department_2 = Department.create(name:"Sales", floor:"52")

    moss = Employee.create(name:"Moss", level:1, department_id:department_1.id)
    kathy = Employee.create(name:"Kathy", level:52, department_id:department_2.id)

    ticket_1 = Ticket.create(subject: 'Broken Keyboard', age: 5)
    ticket_2 = Ticket.create(subject: 'Coffee Machine Broken', age: 1)

    moss.add_ticket(ticket_2.id)
    moss.add_ticket(ticket_1.id)

    visit("/employees/#{moss.id}")

    expect(page).to have_content("Moss")
    expect(page).to have_content(ticket_1.subject)
    expect(page).to have_content(ticket_2.subject)
    expect(ticket_1.subject).to appear_before(ticket_2.subject)
  end

  it "List of employees and tickets" do
    department_1 = Department.create(name:"IT", floor:"Basement")
    department_2 = Department.create(name:"Sales", floor:"52")

    moss = Employee.create(name:"Moss", level:1, department_id:department_1.id)
    kathy = Employee.create(name:"Kathy", level:52, department_id:department_2.id)

    ticket_1 = Ticket.create(subject: 'Broken Keyboard', age: 5)
    ticket_2 = Ticket.create(subject: 'Coffee Machine Broken', age: 1)

    # moss.add_ticket(ticket_2.id)
    # moss.add_ticket(ticket_1.id)

    visit("/employees/#{moss.id}")
    fill_in "id", with: "#{ticket_1.id}"
    click_button "Add Ticket"

    expect(page).to have_content(moss.name)
    expect(page).to have_content(ticket_1.subject)
    
  end

  it "List of employees and tickets" do
    department_1 = Department.create(name:"IT", floor:"Basement")
    department_2 = Department.create(name:"Sales", floor:"52")

    moss = Employee.create(name:"Moss", level:1, department_id:department_1.id)
    kathy = Employee.create(name:"Kathy", level:52, department_id:department_2.id)
    tom = Employee.create(name:"Tom", level:22, department_id:department_2.id)

    ticket_1 = Ticket.create(subject: 'Broken Keyboard', age: 5)
    ticket_2 = Ticket.create(subject: 'Coffee Machine Broken', age: 1)

     moss.add_ticket(ticket_2.id)
     moss.add_ticket(ticket_1.id)
     kathy.add_ticket(ticket_1.id)
     kathy.add_ticket(ticket_2.id)
     tom.add_ticket(ticket_1.id)


    visit("/employees/#{moss.id}")

    expect(page).to have_content(moss.name)
    expect(page).to have_content(ticket_1.subject)
    expect(page).to have_content(kathy.name)
    expect(page).to have_content(tom.name)
    
  end
end