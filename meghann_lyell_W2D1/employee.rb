class Employee 

  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name, @title, @salary, @boss = name, title, salary, boss
  end 

  def bonus(multiplier)
    @salary * multiplier
  end 




end 