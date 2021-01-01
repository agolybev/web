@visual-regression
Feature: User can view different parts of the files page
  As a user
  I want to be able to view different parts of the files page
  So I can easily use owncloud

  Background:
    Given user "user1" has been created with default attributes
    And user "user1" has logged in using the webUI

  Scenario: Top bar for files page should match the baseline
    When the user browses to the files page
    Then the top bar should match the default baseline
    And the sidebar should match the default baseline