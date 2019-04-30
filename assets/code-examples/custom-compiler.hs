-- Creates diff knowledge model from base km by applying events
runDiffApplicator km events =
    runApplicator km editedEvents
    where editedEvents = filter isNotDeleteEvent events