Feature: Recevabilite Ginko
  en tant que

  je veux


  Scenario Outline: Calcule de recevabilite ginko dans le cas d'une F100
    Given Un fournisseur
    And Un point improductif
    And La demande dans OSR contient Indicateur Archivage Suppression <indicateurArchivageSuppression> et indicateur PMES <indicateurPMES> et la date de fin des traveux <dateFinTravaux>
    And l'etat de recevabilité dans Ginko est recevable
    When je commande une F100
    Then L'affaire est crée dans SGE dans l'état <etatAffaireGinko>

    Examples:
      | indicateurArchivageSuppression | indicateurPMES | dateFinTravaux | etatAffaireGinko |
      | true                           | true           | 01/01/2018     | indetermninee    |
      | false                          | true           | 01/01/2018     | non recevable    |
      | false                          | true           | 01/01/2018     | recevable        |