

And /^navigate to ([^"].+) page$/ do |link|
  page.should have_link(link)
  click_link(link)
  current_path.should == '/admin/categories/new'
  
end

Then /^I can add new Category$/ do
  get :new
  page.should have_field('category_name')
  

  steps %Q{ 
				When I fill in "category_name" with "CatOne"
				And I fill in "category_keywords" with "KeyOne"
				And I fill in "category_permalink" with "LinkOne"
				And I fill in "category_description" with "DescriptionOne"
				And I press "Save"
        Then I should see "CatOne"
				}
	  current_path.should == '/admin/categories/new'
  
				
end

Then /^I can edit Category$/ do
  get :edit, :id => 1
  page.should have_link('/admin/categories/edit/1')
end

When /^Category name is empty$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I cannot save Category$/ do
  pending # express the regexp above with the code you wish you had
end

