class Store < ActiveRecord::Base
  has_many :employees

  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:
  { only_integer: true, greater_than_or_equal_to: 0 }

  before_destroy :check_employees_size, prepend: true

  private

  def check_employees_size
    if employees.any?
      errors[:base] << "Employees' jobs protected!"
      return false
    end
  end
end
