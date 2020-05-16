@01b6c990-9716-4270-9d40-3414724690c0 
Feature: Rename 2 singles to cheapest tickets
  Rename the two singles option "Cheapest tickets"
Show only two singles when its the cheapest option.
  @android @ios 
  Scenario: Two singles option as cheapest tickets for a return journey which is in near future
  	 Acceptance criteria 3 
 I have searched for a journey from London to Manchester leaving today and coming back tomorrow 
 I pick an outbound and a return journey (journey should be less than ?80)
 I see the two singles option at the top of the screen and it is called ?Cheapest tickets?
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date | Return Date |
       | London | Manchester | Return | today | +1 days |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Return Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    And  the "Cheapest Tickets" text is shown
    And  the "Advance Single" text is shown
