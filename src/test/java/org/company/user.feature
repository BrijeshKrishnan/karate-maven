Feature: check return users by the API

Background: 
    * url 'https://gorest.co.in'
Scenario: list all users having name with Marar

    Given path '/public/v2/users'
    And param name = 'Marar'
    When method get
    Then status 200

    And def userResponse = response
    Then match userResponse.[*].name contains "#regex (?i).*Marar.*"