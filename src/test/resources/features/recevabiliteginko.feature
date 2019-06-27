Feature: Recevabilite Ginko
  en tant que

  je veux

  #Background: User is Logged In
   # Given I navigate to the login page
   # When I submit username and password
    #Then I should be logged in
  Scenario Outline: Calcule de recevabilite ginko dans le cas d'une F100
    Given Un fournisseur "EDF COMMERCE"
    And Un point improductif "50098223332"
    And La demande dans OSR contient Indicateur Archivage Suppression <indicateurArchivageSuppression> et indicateur PMES <indicateurPMES> et la date de fin des traveux <dateFinTravaux>
    And l'etat de recevabilité dans Ginko est "recevable"
    When je commande une "F100"
    Then L'affaire est crée dans SGE dans l'état <etatAffaireGinko>

    Examples:
      | indicateurArchivageSuppression | indicateurPMES | dateFinTravaux | etatAffaireGinko |
      | true                           | true           | 01/01/2018     | indetermninee    |
      | false                          | true           | 01/01/2018     | non recevable    |
      | false                          | true           | 01/01/2018     | recevable        |


    @wip
  Scenario Outline: Calcule de recevabilite ginko dans le cas d'une F100
    Given Un fournisseur {string}
      Examples:
        | indicateurArchivageSuppression | indicateurPMES | dateFinTravaux | etatAffaireGinko |
        | true                           | true           | 01/01/2018     | indetermninee    |
        | false                          | true           | 01/01/2018     | non recevable    |
        | false
    And Un point improductif "50098223332"
    And La demande dans OSR contient Indicateur Archivage Suppression <indicateurArchivageSuppression> et indicateur PMES <indicateurPMES> et la date de fin des traveux <dateFinTravaux>
    And l'etat de recevabilité dans Ginko est "recevable"
    When je commande une "F100"
    Then L'affaire est crée dans SGE dans l'état <etatAffaireGinko>
