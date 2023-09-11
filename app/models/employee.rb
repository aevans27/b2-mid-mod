class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_tickets
  has_many :tickets, through: :employee_tickets

  def add_ticket(ticket_id)
    ticket = Ticket.find(ticket_id)
    tickets << ticket
  end

  def unique_ticket_names
    names_list = []
    self.tickets.each do |ticket|
      ticket.employees.each do |emp|
        names_list << emp.name
      end
    end
    names_list.uniq
  end
end