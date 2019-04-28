-- Creates action for loading available knowledge models
tableActionUpgrade wrapMsg =
    wrapMsg << ShowHideQuestionnaireUpgradeForm << Just

-- Updates state based on received message
update msg wrapMsg appState model =
    case msg of
        ShowHideQuestionnaireUpgradeForm questionnaire ->
            loadAvailableKnowledgeModels questionnaire

        PostQuestionnaireMigrationCompleted (Ok _) ->
            let
                uuid =
                    model.migratedQuestionnaireUuid
            in
            redirectToQuestionnareMigrationDetail uuid
        
        PostQuestionnaireMigrationCompleted (Err error) ->
                processMigrationError 