Feature: Sign in
  As an existing User
  So that I can use the application
  I want to be able to login

  Background:


    Given the following users are registered:
      | email                     | password | first_name | last_name |
      | admin@example.com         | pppppppp | First      | User      |

    Given I am on the home page
    And the sign in form is visible

  Scenario: Sign in for an existing admin
    Given I sign in as "admin@example.com" with password "pppppppp"
    Then I should be on Daschboard page

  Scenario: Sign in with wrong password for an existing admin
    Given I sign in as "admin@example.com" with password "12345"
    Then I should see "Invalid username or password"