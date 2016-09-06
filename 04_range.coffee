range = (min, max, step) ->
    result = []
    if step
        for i in [min..max] by step
            result.push i
    else
        for i in [min..max]
            result.push i
    return result


sum = (array) ->
    result = 0
    for i in [0..array.length-1]
        result +=array[i]
    return result


aarray = range 4, 8
console.log aarray
aarray.reverse()
console.log aarray
