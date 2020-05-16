@369802d1-ddd4-49d6-a24a-e6bf64d94be6 
Feature: Journey options feature
  
  @ios @android 
  Scenario: User selects a first class ticket
  	Acceptance criteria: I have searched for a single journey from London to Manchester
I can see out journey results
I select a journey
Now I check for first class tickets for the journey on ticket options screen
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date |
       | EUS | MAN | single | tomorrow |
    Then  I should see the "Out Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    When  I click on the "First Class" button
    When  I scroll to the "Anytime" text
    And  click on the "Anytime" text
    Then  I should see the "Payment" screen
