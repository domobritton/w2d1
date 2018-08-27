class Manager < Employee 
  attr_accessor :employees 
  
  def initialize(name, title, salary, boss)
    super
    
    @employees = []
  end   
  
  def bonus(multiplier)
    total_salaries = 0
    @employees.each {|employee| total_salaries += employee.salary }
    
    total_salaries * multiplier
  end 
  
end 