Feature: An application to do whatever
  In order to generate revenue
  The users
  Should be able to visit our web site

  Scenario: Go on post 1                                      # features/test.feature:4
    Given I browse "http:/p:3000/"                            # features/test.feature:7
    Given I am on homepage                                    # features/test.feature:8
    And I follow "Post-1"                                     # features/test.feature:9
    Then I should be on "/post/1"                             # features/test.feature:10
    And I should see "Post-1"                                 # features/test.feature:11
