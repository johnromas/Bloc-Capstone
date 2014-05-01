# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Access Flooring", "Acoust/Floor", "Acoustical", "Ansul Protection", "Applicances", "Aquariums", "Electrician"].each do |trade|
  Trade.find_or_create_by_name(trade)
end

["Accountant", "Estimator", "Project Manager", "Superintendent", "Project Executive", "Project Admin", "Closeout Admin", "Assistant Superintendent", "Project Engineer", "Business Development/Account Manager"].each do |role|
  ProjectRole.find_or_create_by_name(role)
end

["Architect", "Client", "Contact", "Developer", "Employee", "Engineer", "EWA", "H11", "Management Company", "Site", "Subcontractor", "Tenant"].each do |type|
  CompanyType.find_or_create_by_name(type)
end

["Commercial", "Retail"].each do |group|
  SachseGroup.find_or_create_by_name(group)
end

["Retail", "Tenant Improvement", "Airport", "Ground Up", "Commercial", "Healthcare", "Education"].each do |type|
  ProjectType.find_or_create_by_name(type)
end



["Estimating", "Accounting", "Billing"].each do |department|
  CompanyDepartment.find_or_create_by_name(department)
end

["Cost Plus", "Fixed", "GMP", "Quick Bill"].each do |type|
  ContractType.find_or_create_by_name(type)
end

["01. Sales", "02. Budget", "03. Bidding", "04. Pending", "05. Upcoming", "06. Construction", "07. Closing - OPS"].each do |phase|
  ProjectPhase.find_or_create_by_name(phase)
end

