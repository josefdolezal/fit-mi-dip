{- Transforms km modification event into diff state -}
convertDiffEventToDiffState oldKm diffKm event dict =
    case event of
        AddKnowledgeModelEvent data _ ->
            kmCreatedState diffKm dict

        EditKnowledgeModelEvent data _ ->
            kmModifiedState data.kmUuid oldKm diffKm dict

        AddChapterEvent data _ ->
            cptrCreatedState data.chapterUuid diffKm dict

        EditChapterEvent data _ ->
            cptrModifiedState data.chapterUuid oldKm diffKm dict
        
        {- ... Continues for each km node-}