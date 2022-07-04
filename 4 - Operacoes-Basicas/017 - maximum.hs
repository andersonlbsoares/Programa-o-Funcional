-- Retorna o maior elemento de uma lista sem usar o operador max
maior [x] = x
maior (x:xs) = 
    if resto > x 
        then resto 
    else x
        where resto = maior xs