@e778601b-3a7e-48b6-9916-1f5eb292df4a 
Feature: Application start up
  
  @android 
  Scenario: Showcase screen buttons navigation
  	
    When  I start the application
    Then  I should see the "Landing Page" screen
    When  I click on the "Skip" button
    Then  I should see the "Home Page" screen
