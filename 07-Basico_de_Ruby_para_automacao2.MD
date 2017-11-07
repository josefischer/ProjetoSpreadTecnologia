
Os Arrays são uma coleção de objetos ordenados, ou seja coleções indexadas inteiras de qualquer objeto.

A indexação de um array começa em 0, ou seja o primeiro item do meu array tem o index 0. Um índice negativo é assumido como -1, ou seja indica o último elemento do array, -2 é o próximo elemento da lista da direita para a esquerda, e assim por diante.
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

Para inserir um valor no nosso Array determinado em que lugar devemos inserir o nosso valor, usamos o método **"insert"**
```ruby
array.insert(3, 'orange', 'pear', 'grapefruit') # => [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
```
** No exemplo acima ele insere o valores apartir do 4 elemento, o primeiro elemento é o **0** e o ultimo elemento **-1**.   

Para deletar um elemento especifico por index usamos o "delete_at" e pra deletar um determinado conteúdo usamos o **"delete¨**.
```ruby
array = [1, "two", 3.0]
array.delete_at(2) # Deleta o elemento que tem o index 2, ou seja o 3.0
p array # Resultado => [1, "two"]

array = [1, "two", 3.0, "two"]
array.deletet("two") # Deleta o elemento que contém o valor "two", ou seja que contém o index 1 e 3.
p array # Resultado => [1, 3]
```
