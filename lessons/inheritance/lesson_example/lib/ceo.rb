require 'pry'
class Ceo

  class Ceo < Employee
    attr_reader :base_salary,
                :bonus
 binding.pry
    def initialize(base_salary, bonus)
      @base_salary = base_salary
      @bonus       = bonus
    end
  end

end