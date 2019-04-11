instance ToBSON Questionnaire where
    toBSON model =
        [ "uuid"           BSON.=: model ^. uuid
        , "knowledgeModel" BSON.=: model ^. knowledgeModel
        , "replies"        BSON.=: model ^. replies
        ]
  
instance FromBSON Questionnaire where
    fromBSON doc = do
        uuid           <- BSON.lookup "uuid" doc
        knowledgeModel <- BSON.lookup "knowledgeModel" doc
        replies        <- BSON.lookup "replies" doc
        return Questionnaire { .. }