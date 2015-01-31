Feature: Merge Articles
	As a Typo administrator
  I want to merge similar articles into one article
  In order for users to easily find related articles 


Background:
Given the blog is set up
Given the following articles exist:
	|id |title								|	author				| user_id	| body					|
	|1	|First article				| admin					| 1				| LoremIpsum 1  |
	|2	|TDD and BDD primer		|	admin					| 1				| LoremIpsum 2	|
	|3	|BDD principles				| publisher			| 2				| Ipsum Facto 1	|
	|4  |The art of UI design	| publisher			| 2				| LoremIpsum 3	|
	|5	|Refactoring with TDD	| admin					|	1				| Ipsum Facto 2 |



Scenario: A non-admin cannot merge articles.
  Given I am logged in as publisher
	When I am on the details page for "BDD principles"
	Then I should not see "Merge Articles"


Scenario: Admin can merge articles
	Given I am logged into the admin panel
	And I am on the details page for "BDD principles"
	Then the article "BDD principles" should have body "Ipsum Facto 1"
	And I should see "Merge With This Article" button
  When I fill in "merge_with" with "5"
  And I press "Merge With This Article"
  Then the article "BDD principles" should have body "Ipsum Facto 1 Ipsum facto 2"
  And show me the page


	Scenario: When articles are merged, the merged article should contain the text of both previous articles.
		Given I am logged into the admin panel



	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  


	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.


	Scenario: The title of the new article should be the title from either one of the merged articles.

