createEndpoints :: BaseContext -> ScottyT Text BaseContextM ()
createEndpoints context = do
  -- Middleware registration
  middleware {- logging, authorization, CORS -}
  -- Routes registration
  get "/questionnaires/:qtnUuid/migrations"
        getQuestionnaireMigrationsCurrentA
  post "/questionnaires/:qtnUuid/migrations"
        postQuestionnaireMigrationsCurrentA
  delete "/questionnaires/:qtnUuid/migrations"
        deleteQuestionnaireMigrationsCurrentA
  put "/questionnaires/:qtnUuid/migrations"
        putQuestionnaireMigrationsCurrentA
  put "/questionnaires/:qtnUuid/migrations/resolveQuestionEvent"
        putQuestionnaireMigrationsQuestionFlagA