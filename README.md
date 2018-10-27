# Matriz de Ordenação do Keep Alive

Pequeno _script_ `Shell` que cria uma matriz para organizar as prioridades de um Cluster Keep Alive (`keepalived`).

A estrutura básica da Matriz é descrita a seguir:

1. Para um Cluster com 6 nós

|   | a | b | c | d | e | f |
|---|---|---|---|---|---|---|
| a | 1 | 2 | 3 | 4 | 5 | 6 |
| b | 2 | 3 | 4 | 5 | 6 | 1 |
| c | 3 | 4 | 5 | 6 | 1 | 2 |
| d | 4 | 5 | 6 | 1 | 2 | 3 |
| e | 5 | 6 | 1 | 2 | 3 | 4 |
| f | 6 | 1 | 2 | 3 | 4 | 5 |
