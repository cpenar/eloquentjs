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

#console.log centuryMap.value
#for cent, tab of centuryMap
#   console.log cent,":",  average tab

every = (array, f) ->
    for i in [0..array.length - 1]
        return false if not f array[i]
    true
        
some = (array, f) ->
    for i in [0..array.length-1]
        return true if f array[i]
    false

console.log every [NaN, NaN, NaN], isNaN
console.log every [NaN, NaN, 4], isNaN
console.log some [NaN, NaN, 4], isNaN
console.log some [3, 8, 4], isNaN

