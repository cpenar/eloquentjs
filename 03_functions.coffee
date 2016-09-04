# Exo 1

isEven = (n) ->
    return "pair" if n==0
    return "impair" if n==1
    isEven n-2

console.log isEven 18

#Exo 2

countChar = (chaine, char) ->
    total = 0
    for i in [0..chaine.length - 1]
        total++ if (chaine.charAt i) == char
    return total

console.log countChar "BBC", "B"
console.log countChar "kakkolak", "k"
    


