Feature: Blah

Scenario: Testing Capybara sessions
  Given I am on the homepage
  When I register
  And Someone else registers
  Then Something should happen :))

Scenario: Playing with arguments
  Given I am on the homepage
  Then I should see "something"
  Then I should see "something else"