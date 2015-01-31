Given /^the following articles exist:$/ do |table|
	table.hashes.each do |article|
		Article.create(article)
	end
end

When /^I edit "([^"].+)"$/ do |article|
	@article = Article.find_by_title(article)
	visit("/admin/content/edit/#{@article.id}")
	current_path.should match("/admin/content/edit/#{@article.id}")
end


Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end

And /^I should see "([^"].+?)" button$/ do |btn|
  page.has_button?(btn)

end

