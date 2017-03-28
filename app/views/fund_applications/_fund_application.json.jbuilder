json.extract! fund_application, :id, :projectedTime, :initialInvestment, :interestRate, :monthlyInvestment, :isStatic, :created_at, :updated_at
json.url fund_application_url(fund_application, format: :json)
