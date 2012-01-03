class CreateHumanValidations < ActiveRecord::Migration
  def change
    create_table :human_validations do |t|
      t.integer :gold_num1
      t.integer :gold_num2
      t.integer :gold_sum

      t.timestamps
    end
  end
end
