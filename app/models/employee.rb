class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_tickets
  has_many :tickets, through: :employee_tickets

  def add_ticket(ticket_id)
    ticket = Ticket.find(ticket_id)
    tickets << ticket
  end

  def self.unique
    employee = self.distinct
  end
end