class EmployeesController < ApplicationController
  def home
    @employees = Employee.all
  end

  def show
    find_employee
  end

  def edit
    find_employee
    @dogs = Dog.all
  end

  def update
    find_employee
    @employee.update(employee_params)
    redirect_to @employee
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end
end
