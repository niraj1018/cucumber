@369802d1-ddd4-49d6-a24a-e6bf64d94be6 
Feature: Journey options feature
  
  @ios @android 
  Scenario: Check earlier trains for a journey search in future
  	Acceptance criteria: I have searched for a single journey from London to Manchester
 I can see out journey results
 I tap earlier trains on out journey results screen
 Now I see new results on out journey results screen
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date |
       | EUS | MAN | single | tomorrow |
    Then  I should see the "Out Search Results" screen
    When  I note the current page content as "Original Search Results"
    When  I click on the "Earlier Trains" button
    Then  I should see the current page content is different from "Original Search Results"
