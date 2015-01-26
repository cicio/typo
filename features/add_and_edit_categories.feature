Feature: Add and Edit Categories
	As a blog admininstrator
	I want to add blog categories
	So that bloggers can classify their blogs by category

  Background:
    Given the blog is set up
		And I am logged into the admin panel
		And navigate to Categories page

	Scenario: Sucessful add and edit Category
		Then I can add new Category
    And I can edit Category
		
  Scenario: Cannot add Category with empty name
  	When Category name is empty
		Then I cannot save Category


