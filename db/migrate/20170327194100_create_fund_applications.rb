class CreateFundApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :fund_applications do |t|
      t.date :projectedTime
      t.float :initialInvestment
      t.float :interestRate
      t.float :monthlyInvestment
      t.boolean :isStatic

      t.timestamps
    end
  end
end
