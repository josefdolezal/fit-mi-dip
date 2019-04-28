deleteMigratorStateByQuestionnaireId :: String
                                     -> AppContextM ()
deleteMigratorStateByQuestionnaireId qtnUuid = do
  let action = delete $
    select ["questionnaire.uuid" =: qtnUuid] qtnmCollection
  runDB action