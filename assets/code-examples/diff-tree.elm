{- Create the tree root node -}
createDiffTree knowledgeModel replies =
    let
        chaptersSubtree = {- shortened -}
        kmNode = {- shortened -}
    in
    {- Create root node with chapters subtree -}
    kmNode chaptersSubtree

{- Create subtree for chapters -}
createChapterDiffSubTree parentPath replies chapter diffTree =
    let
        children =
            List.map getQuestionUuid chapter.questions

        path =
            List.append parentPath
                [ ChapterPathNode chapter.uuid ]

        subtreeDict =
            List.foldl (createQuestionDiffSubTree path replies)
                diffTree chapter.questions

        chapterNode = {- shortened -}
    in
    Dict.insert chapter.uuid chapterNode subtreeDict
