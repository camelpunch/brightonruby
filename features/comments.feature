Feature: Comments
  As a visitor to the Brighton Ruby site
  I want to add a comment
  So that I can spam everyone about my pr0n

  Scenario: Add a comment
    Given I am on the homepage
    When I add a comment "Hello!"
    And press "Add comment"
    Then an unapproved comment notice should be visible on the website

  Scenario: Comment approved from command line
    Given a comment exists with text: "Hello Bob!"
    And I am on the homepage
    Then an unapproved comment notice should be visible on the website

    When the comment is approved on the command line
    And I go to the homepage
    Then I should see "Hello Bob!"

