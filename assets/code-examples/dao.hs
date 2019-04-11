-- Finds questionnaire by its ID
findQuestionnaireById :: String
                      -> Context (Either AppError Questionnaire)
findQuestionnaireById id = do
    let action = findOne $ select [ "id" =: id ] collection
    maybeQuestionnaireS <- runDB action
    return . deserializeMaybeEntity $ maybeQuestionnaireS

findQuestionnaires :: Context (Either AppError [Questionnaire])
findQuestionnaires = ...