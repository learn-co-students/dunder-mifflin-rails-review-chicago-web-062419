class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, length: {minimum: 2}, presence: true
    validates :last_name, length: {minimum: 2}, presence: true
    validates :alias, uniqueness: true, presence: true
    validates :title, uniqueness: true, presence: true
    validates :title, presence: true
    validates :dog_id, length: {is: 1}
    validates :img_url, presence: true

    def full_name
        "#{first_name} #{last_name}"
    end
end
