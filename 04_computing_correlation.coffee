JOURNAL = require './jacques_journal.data.js'
journal = []
addEntry = (events, didITurnIntoASquirrel) ->
    local =
        events: events,
        squirrel: didITurnIntoASquirrel
    journal.push  local


phi = (table) ->
    (table[3]*table[0]-table[1]*table[2])/
       Math.sqrt((table[2] + table[3]) *
                 (table[0] + table[1]) *
                 (table[1] + table[3]) *
                 (table[0] + table[2]))

hasEvent = (event, entry) ->
    (entry.events.indexOf event) != -1


tableFor = (event, journal) ->
    table = [0,0,0,0]
    for i in [0..journal.length-1]
        entry = journal[i]
        index = 0
        index++ if hasEvent event, entry
        index+=2 if entry.squirrel
        table[index]+=1
    return table

map = {}
storePhi = (event, phi) ->
    map[event] = phi

gatherCorrelations = (journal) ->
    phis={}
    for entry in [0..journal.length-1]
        events = journal[entry].events
        for i in [0..events.length-1]
            event = events[i]
            if !(event in phis)
                phis[event] = phi tableFor event, journal
    return phis

correlations = gatherCorrelations JOURNAL
#for event,correlation of correlations
#    if correlation > 0.1 || correlation < -0.1
#        console.log event + ":  " +correlation

for i in [0..JOURNAL.length-1]
    entry = JOURNAL[i]
    if (hasEvent "peanuts", entry) && (!hasEvent "brushed teeth", entry)
        entry.events.push "peanuts teeth"

console.log phi tableFor "peanuts teeth", JOURNAL
