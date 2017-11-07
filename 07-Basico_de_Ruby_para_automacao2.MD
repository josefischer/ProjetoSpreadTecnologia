
Os Arrays são uma coleção de objetos ordenados, ou seja coleções indexadas inteiras de qualquer objeto.

A indexação de um array começa em 0, como em C ou Java. Um índice negativo é assumido como -1, ou seja indica o último elemento do
array, -2 é o próximo elemento da lista da direita para a esquerda, e assim por diante.
```ruby
array = [1, "two", 3.0] # uma lista de objetos ordenados pelo indice.
puts array[0] # Valor impresso 1, do tipo Integer.
puts array[1] # Valor impresso two, do tipo String.
puts array[2] # Valor impresso 3.0, do tipo Float.
```
No Ruby temos um método pra acessar o primeiro elemento do array e o ultimo, com as funções **"first"** e **"last"**:
```ruby
array.first #=> 1
array.last  #=> 3.0
```
Para inserir um valor no nosso Array, usamos o método **"push"**
array.push("Passou")

** Quando ele insere o valor vai para o final do nosso array.
```ruby
p array # Resultado => [1, "two", 3.0, "Passou"]
```
