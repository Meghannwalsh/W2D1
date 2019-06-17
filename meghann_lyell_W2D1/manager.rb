require_relative "employee"

class Manager < Employee

  attr_accessor :subordinates

  def initialize(name, title, salary, boss, subordinates)
    super(name, title, salary, boss)
    @subordinates = subordinates 
  
  end

  def bonus(multiplier)
    bonus = get_subs * multiplier
  end

  def get_subs
    total = self.salary
    subordinates.each {|emp| emp.is_a?(Manager) ? emp.get_subs : total += emp.salary}
    total
  end
end

Shawna = Employee.new("Shawna", "TA", 12000, "Darren")
David = Employee.new("Shawna", "TA", 10000, "Darren")
Darren = Manager.new("Darren", "Manager", 78000, "Ned", [Shawna, David])
ned = Manager.new("Ned", "Founder", 1000000, nil, [Darren])

puts ned.bonus(5)