Given /^the following articles exist:$/ do |table|
	table.hashes.each do |article|
		Article.create(article)
	end
end

Given /^I am logged in as publisher$/ do
  visit '/accounts/login'
  @user = User.find_by_name('publisher')
  
end
