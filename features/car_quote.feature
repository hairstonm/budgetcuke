Feature: Searching for rentals
  Scenario:  searching for rental cars
    When I submit my car rental requirements
    Then I get the results


  Scenario: Return date before pickup date
    When I put the pickup time before rental
    Then I get an error returned