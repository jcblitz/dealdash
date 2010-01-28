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

  Scenario: Delete site
    Given the following sites:
      |name|url|description|
      |name 1|url 1|description 1|
      |name 2|url 2|description 2|
      |name 3|url 3|description 3|
      |name 4|url 4|description 4|
    When I delete the 3rd site
    Then I should see the following sites:
      |Name|Url|Description|
      |name 1|url 1|description 1|
      |name 2|url 2|description 2|
      |name 4|url 4|description 4|
