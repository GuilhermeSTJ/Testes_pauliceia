Feature: Select camadas on the Map page
  I want to select different camadas to see on the Mapa page

  Scenario: Visualize the "A enchente de 1850" camada
    Given Im at the Map page for the first time
    When click the x button on the banner
    When I click the Camadas button
    And click the "adicionar e remover camadas" icon
    When i search for "A enchente de 1850" card
    Then I will wait for 3 seconds
    Then i should see "A enchente de 1850" card
    And click the "Ativar" button on the "A enchente de 1850" card
    Then I will wait for 2 seconds
    Then i should close the window
    And I should see the information of the "A enchente de 1850" camada
  
