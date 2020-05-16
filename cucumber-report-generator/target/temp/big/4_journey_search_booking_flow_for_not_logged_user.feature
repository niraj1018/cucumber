@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @android @system @android_acceptance @ios @ios_acceptance 
  Scenario: Booking flow for not logged user
  	
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date | Adults | Children |
       | YRK | ZFD | Single | tomorrow | 2 | 2 |
    Then  I should see the "Out Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    When  I select item No.1 from the "Tickets" table
    Then  I should see the "Payment" screen
    And  I should see the "Login or register" button is visible
