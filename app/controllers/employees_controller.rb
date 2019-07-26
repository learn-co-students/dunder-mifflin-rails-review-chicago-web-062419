class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to @employee
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.update(employee_params)
    redirect_to @employee
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.delete
    redirect_to @employees
  end

  def edit
    @employee = Employee.find_by(id: params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit! #(:first_name, :last_name, :alias, :title, :office, :img_url)
  end

end
