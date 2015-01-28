Feature: Merge Articles
	As a Typo administrator
  I want to merge similar articles into one article
  In order for users to easily find related articles 


Background:
Given the following articles exist:
  | id	| title						| user_id |
	| 1		| Hello World			|		1			|
	| 2		| TDD primer			|		1			|
	| 3		| TDD and BDD news|		2			|
	| 4		| Ruby Mixins			|	  2			|


Scenario: A non-admin cannot merge articles.
  Given I am logged into the admin panel
	When I edit one of my articles
	Then I should not see "Merge Articles" form


	Scenario: Admin can merge articles
		Given I am logged into the admin panel
		When I edit any article
		Then I should see "Merge Articles" form

	Scenario: When articles are merged, the merged article should contain the text of both previous articles.
		Given I am logged into the admin panel



Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  


Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.


Scenario: The title of the new article should be the title from either one of the merged articles.

