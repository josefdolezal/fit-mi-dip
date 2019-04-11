-- Define DTO
data QuestionnaireDetailDTO = QuestionnaireDetailDTO
    { uuid           : String
    , knowledgeModel : KnowledgeModelDTO
    , replies        : [ReplyDTO]
    }

-- Convert Model object to DTO
toQuestionnaireDetailDTO :: Questionnaire
                         -> QuestionnaireDetailDTO
toQuestionnaireDetailDTO model =
    QuestionnaireDetailDTO
        { uuid = model ^. uuid
        , knowledgeModel = model ^. knowledgeModel
        , replies = model ^. replies
        }