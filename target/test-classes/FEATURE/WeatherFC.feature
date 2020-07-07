#Author: RAHUL RANJAN

@Search-CityWeather
Feature: Acceptance testing to search Weather for cities
      Check that weather serach for cities is all ok

  @Search-CityWeather-Positive
  Scenario Outline: Search with city
    Given I am on the weather website "http://localhost:3000/"
    When I input the city
    
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then Weather details are displayed for cities
    

    @check1
    Scenario Outline: check that 5 days report displayed
    Given I am on the weather website "http://localhost:3000/"
    When I input the city
    
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then 5 day weather details are displayed for cities
    @check2
    Scenario Outline: check that when days are clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day field 
        
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then i get the 3 hours of forecast for city
    @check3
    Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day and again click it.
        
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then I see that 3 hours of forecast for city disappeared

  @check4
    Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day 
            
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then I see that 3 hours of forecast for city with summary for condition
    And condition is displaying most dominant condition for the day

   @check5
    Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day 
            
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then I see that 3 hours of forecast for city with summary for wind
    And most dominant wind speed is displayed for the day
   @check6
    Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day 
            
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then I see that 3 hours of forecast for city for rainfall
    And rainfall is aggregarted for the day
    
       @check7
    Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city 
    And I click on the day 
            
    Examples: 
      | City    |  Status  |
      |aberdeen	|  success |
      |glasgow  |  success |
      |edinburgh|  success |  
      |perth    |  success |
      |striling |  success |
         
    Then I see that 3 hours of forecast for city for temperature
    And Temperature is displaying maximum temperatutre  for the day
    And Temparture is displaying minimum temperature for the day
  @Search-CityWeather-Negative
 Scenario Outline: Search with city
    Given I am on the weather website "http://localhost:3000/"
    When I input the city
    
    Examples: 
      | City    |  Fail  |
      |aberdeene	|  Fail |
      |glasgowe  |  Fail |
      |edinburghi|  Fail |  
      |pert    |  Fail |
      |strilng |  Fail |
         
    Then Weather details not displayed for cities
    And check more outcomes