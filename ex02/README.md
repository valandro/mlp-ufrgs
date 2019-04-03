# Explicação

### Double

Foi utilizado a função **map** para aplicar uma determinada função, nesse caso y(x) = 2 * x, em cada elemento da lista.

```haskell
double list = map (*2) list
```

### Somalst

Foi utilizada a função **foldr** para percorrer toda a lista, e aplicando uma operação sobre cada elemento, necessitando de um acumalador inicial.

```
somalst list = foldr (+) 0 list
```