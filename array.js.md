```coffee
new Array() # pure
new Array(n) # pure
arr.length # pure
arr.length = n # tronque le tableau à n # bord
arr.join([séparateur = ',']) # pure
arr.slice(début[, fin]) # shallow copy ; pure
arr.indexOf(élémentRecherché[, indiceDébut = 0]) # pure
arr.find(callback[, thisArg]) # pure ; 
arr.push(élément1, ..., élémentN) # elem ou array ; bord
arr.pop() # supprime le dernier élément et le retourne ; bord
arr.shift() # supprime le premire elem et le retourne ; bord
arr.unshift(élément1, ..., élémentN) # elem ou array, ajoute au début ; bord
new_arr = arr.concat( anotherArray ) ; pure
arr.reverse()  # Inverse le tab ; bord
arr.forEach(callback[, thisArg]) # pure ; exec le callback sur chaque elem
new_array = arr.filter(callback[, thisArg]) # pure ;retourne un tab des elem repondant true au callback
new_array = arr.map(callback[, thisArg]) # pure ; retourne un tab des result du callback appliquée au elem
arr.reduce(callback[, initialValue]) # pure ; applies a function against an accumulator and each value of the array
```

