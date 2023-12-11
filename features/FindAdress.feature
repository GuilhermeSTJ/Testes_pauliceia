Feature: Find an address on the Pauliceia 2.0 page.
  I want to enter an adress on the Pauliceia 2.0 page.

  Scenario: Look for a valid address that is in the databank
    Given Im at the Map page for the first time
    When click the x button on the banner
    When enter a the address "rua conselheiro belisario, 56, 1908" on the address bar
    Then I should see the option "rua conselheiro belisario, 56, 1908"
  
  Scenario: look for a invalid format address
    Given Im at the Map page for the first time
    When click the x button on the banner
    When enter a the address "rua conselheiro belisario, 41" on the address bar
    When i click the search button
    Then I should see the "invalid format" error
