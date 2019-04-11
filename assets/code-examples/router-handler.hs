-- Registering HTTP method with its route
createEndpoints :: BaseContext -> ScottyT Text BaseContextM ()
createEndpoints context = do
    get  "/questionnaires"          getQuestionnairesA
    post "/questionnaires"          postQuestionnairesA
    put  "/questionnaires/:qtnUuid" putQuestionnaireA

-- Questionnaire detail endpoint
getQuestionnaireA :: Endpoint
getQuestionnaireA =
    checkPermission "QTN_PERM" $
        qtnUuid <- param "qtnUuid"
        eitherDto <- getQuestionnaireDetailById qtnUuid
        case eitherDto of
            Right dto -> json dto
            Left error -> sendError error
