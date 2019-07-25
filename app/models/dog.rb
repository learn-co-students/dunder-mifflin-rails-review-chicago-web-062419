class Dog < ApplicationRecord
    has_many :employees

    def owner_count
        self.employees.count
    end

end
