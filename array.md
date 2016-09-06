new Array() # pure

new Array(n) # pure

arr.length # pure

arr.length = n # tronque le tableau à n ; bord

arr.join([séparateur = ',']) ; pure

arr.slice(début[, fin]) # shallow copy ; pure

arr.indexOf(élémentRecherché[, indiceDébut = 0]) ; pure

arr.push(élément1, ..., élémentN) # elem ou array ; bord

arr.pop() # supprime le dernier élément et le retourne ; bord

arr.shift() # supprime le premire elem et le retourne ; bord

arr.unshift(élément1, ..., élémentN) # elem ou array, ajoute au début ; bord

new_arr = arr.concat( anotherArray ) ; pure

arr.reverse()  # Inverse le tab ; bord

arr.forEach(callback[, thisArg]) # pure

