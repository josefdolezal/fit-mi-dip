-- Knowledge model modifications events enumeration
data Event
    = AddKnowledgeModelEvent' AddKnowledgeModelEvent
    | AddChapterEvent' AddChapterEvent
    | DeleteChapterEvent' DeleteChapterEvent
    | AddQuestionEvent' AddQuestionEvent
    | ...

-- New knowledge model meta data
data AddKnowledgeModelEvent = AddKnowledgeModelEvent
  { _addKnowledgeModelEventUuid :: UUID
  , _addKnowledgeModelEventKmUuid :: UUID
  , _addKnowledgeModelEventName :: String
  }