class EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:employee_id])
    @employee.tickets.order(:age)
  end

  # def add_ticket
  #   # employee = Employee.find(params[:employee_id])
  #   # employee.add_ticket(params[:ticket_id])
  #   redirect_to "/employees/#{employee.id}"
  # end

  def update
    @employee = Employee.find(params[:employee_id])
    @employee.add_ticket(params[:id])
    redirect_to "/employees/#{@employee.id}"
  end
end