Feature: User Journey 1

  As a user
  I would like to do basic file and share operations

  Background:
    Given user "user1" has been created with default attributes
    And user "user2" has been created with default attributes

  @journey
  Scenario: simple upload of a file that does not exist before
    When user "user1" has logged in using the webUI
    And the user uploads file "new-lorem.txt" using the webUI
    Then no message should be displayed on the webUI
    And file "new-lorem.txt" should be listed on the webUI
    And as "user1" the content of "new-lorem.txt" should be the same as the local "new-lorem.txt"
    When the user browses to the files page
    And the user downloads file "new-lorem.txt" using the webUI
    Then no message should be displayed on the webUI
