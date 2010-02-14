Feature: Manage sites
  In order to maintain a list of deal sites
  As a user
  I want access to manage sites
  
  Scenario: Register new site
    Given I am on the new site page
    When I fill in "Name" with "name 1"
    And I fill in "Url" with "url 1"
    And I fill in "Description" with "description 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "url 1"
    And I should see "description 1"
    
    Scenario: View all sites
      Given the following site records
      | name            | url                           |
      | Brociety        | http://www.brociety.com/      |
      | Steep and Cheap | http://www.steepandcheap.com/ |
      When I go to the sites page
      Then I should see "Brociety"
      And I should see "Steep and Cheap"