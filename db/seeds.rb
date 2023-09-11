# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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