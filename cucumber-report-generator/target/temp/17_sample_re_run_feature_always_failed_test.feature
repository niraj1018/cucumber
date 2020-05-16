@423261c9-e75c-428c-b19b-baa0f0a735b1 
Feature: Sample re-run feature
  
  @failed 
  Scenario: Always failed test
  	
    Given  I am in the system
    When  I do wrong
    Then  I should see nothing
