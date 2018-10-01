require_relative 'Employee'

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_employee(subordinate)
    employees << subordinate
  end

  def bonus(multiplier)
    self.subsalaries * multiplier
  end

  def subsalaries
    subsalaries = 0
    self.employees.each do |employee|
      if employee.is_a?(Manager)
        subsalaries += employee.salary + employee.subsalaries
      else
        subsalaries += employee.salary
      end
    end

    subsalaries
  end
end
