class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end

    def show
        # before action 
    end

    def new
        @employee = Employee.new

    end

    def create
        @employee = Employee.new(employee_params)
        
        if 
            @employee.save
            redirect_to employee_path(@employee)
        else
            # Show error and redirect to new.
        end
    end

    def edit
        # before action
    end

    def update
        # before action
        @employee.update(employee_params)
        @employee.save
        redirect_to employee_path(@employee) 
    end

    def destroy
        # before action
        @employee.delete
        flash[:notice] = "Employee removed"
        redirect_to employees_path
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :image_url, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end

end

