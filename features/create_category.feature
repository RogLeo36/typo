Feature: Create Categories
  As a blog administrator
  I want to be able to add or edit blogging categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on the Categories page
    When I fill in "category_name" with "Psychology"
    And I fill in "category_keywords" with "Motivation"
    And I fill in "category_description" with "Motivational speeches"
    And I press "Save"
    Then I should be on the Categories page
    Then I should see "Psychology"
    Then I should see "Motivation"
    Then I should see "Motivational speeches"
    