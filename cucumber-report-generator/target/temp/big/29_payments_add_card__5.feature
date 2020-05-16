@5e8acf4f-20bc-46cc-bd9b-d27b46327954 
Feature: Payments
  As a User I want to perform CRUD operations on the payment cards and billing addresses.
  @payment @ios @positive @android 
  Scenario: Add card
  	
    Given  I am logged into the system
    And  I have no payment cards stored
    And  I am on the Payment cards screen
    And  user account has billing address with the following parameters:
       | Country | Postcode | Address line 1 | Address line 2 |
       | UK | EC1M 3HE | 50, Farringdon Road | London |
    When  I add the card with the following criteria:
       | Card type | Card number | Expiry month | Expiry year | Card holder name |
       | Visa Debit | 4539791001730106 | 12 | 20 | Joe Public |
    And  go to the Payment cards screen
    Then  I should see the "Joe Public" text is shown
    And  the "0106" text is shown
