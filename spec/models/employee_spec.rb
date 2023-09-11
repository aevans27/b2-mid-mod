require "rails_helper"

RSpec.describe Employee, type: :model do
  describe "relationships" do
    it { should belong_to :department }
  end

  # it "only unique employees" do
  #   department_1 = Department.create(name:"IT", floor:"Basement")
  #   department_2 = Department.create(name:"Sales", floor:"52")

  #   moss = Employee.create(name:"Moss", level:1, department_id:department_1.id)
  #   kathy = Employee.create(name:"Kathy", level:52, department_id:department_2.id)
  #   tom = Employee.create(name:"Tom", level:22, department_id:department_2.id)


  #   expect(Employee.name).to eq([moss])
  # end
end