class Employee
  attr_reader :name, :salary, :title
  attr_accessor :boss


  def initialize (name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = self.salary * multiplier
  end


end
