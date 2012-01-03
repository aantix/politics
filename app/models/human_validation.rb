class HumanValidation < ActiveRecord::Base
  
  def self.generate
    gold_num1 = rand(100)
    gold_num2 = rand(100)
    gold_sum  = gold_num1 + gold_num2
    
    HumanValidation.create(:gold_num1 => rand(100),
                           :gold_num2 => rand(100),
                           :gold_sum  => gold_sum)
  end
end
