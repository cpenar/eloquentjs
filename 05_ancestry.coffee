ancestry = JSON.parse require "./05_ancestry.data.js"

average = (array) ->
    (array.reduce (accu, elem) ->
        accu + elem)/array.length

byName = {}
ancestry.forEach (person) ->
    byName[person.name] = person

ageMap = (ancestry.filter (person) ->
    person.mother && byName[person.mother]).map (person) ->
    if person.mother && byName[person.mother]
        person.born - byName[person.mother].born

console.log "Age moyen de naissance :", Math.ceil average ageMap

centuryMap = {}
ancestry.forEach (person) ->
    century = "" + Math.ceil (person.died)/100
    if centuryMap[century]
        centuryMap[century].push (person.died - person.born)
    else centuryMap[century] = [ person.died - person.born ]

console.log centuryMap.value
for cent, tab of centuryMap 
    console.log cent,":",  average tab

