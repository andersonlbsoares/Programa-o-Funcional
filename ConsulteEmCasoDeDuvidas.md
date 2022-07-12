head = só o primeiro valor                          | [1..9] -> [1]
last = só o último valor                            | [1..9] -> [9]
init = é tudo menos o ultimo                        | [1..9] -> [1..8]
tail = tudo menos o primeiro valor                  | [1..9] -> [2..9]
take = pega o x primeios valores da lista           | [1..9] -> [1..3] (supondo que x é 3)
drop = pega todos os ultimos menos os x primeiros   | [1..9] -> [4..9] (supondo que x é 3)
takeWhile = pega os valores até que seja verdadeiro | [1..9] -> [1,2,3] (supondo que x é 3)
dropWhile = pega os valores até que seja verdadeiro | [1..9] -> [4,5,6,7,8,9] (supondo que x é 3)
reverse = inverte a lista                           | [1..9] -> [9,8,7,6,5,4,3,2,1]
splitAt = separa a lista em duas partes             | [1..9] -> ([1,2,3],[4,5,6,7,8,9]) (supondo que x é 3)

