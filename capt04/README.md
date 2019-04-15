# Explicação

### fibonacci

Foi utilizado umaa função para calcular o numero N da sequência de fibonacci, e outra para gerar uma lista desses outros números.

```haskell
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
```

```haskell
fibonacciList list = take list fibonacciList where fibonacciList = map (fibonacci) [0,1..]
```

### firstN

Foi utilizada a função take para retonar um array com **number** números ao quadrado, começando com 2 até number.

```haskell
firstN number = take number firstN where firstN = 2:map (^2) firstN
```

### multipleTwo

Foi utilizada a função **filter** para adicionar a condição de apenas os números que forem múltiplos de 2 estarão presentes na lista resultante.

```haskell
multipleTwo list = filter (\x -> (x `mod` 2) == 0) list
```