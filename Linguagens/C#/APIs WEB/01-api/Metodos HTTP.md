
Métodos HTTP

GET - Idempotente (considerado se o resultado de uma requisição realizada com sucesso [e independente do número de vezes que Ã© executada)
POST - Não Idempotente
PUT - Idempotente
DELETE - Idempotente

Basicamente um CRUD

POST(create):
	201(Criado) = Created
	404(não identificado) = Not Found

GET(read): 
	200(Encontrado) = OK
	404(Não encontrado) = Not Found

PUT(update):
	200(alterado) = OK
	201(Created) = Criado caso não exista - está ação é decidida pela API
	404(não identificado) = Not Found

DELETE(delete):
	200(Deletado) = OK
	404(não identificado) = Not Found

Data Annotations para sobrescrever as convenções do EF core

key - Indentifica a propriedade como um chave primaria
Table("nome") - Define o nome da tabela para a qual a classe será mapeada
Column - Define a coluna na tabela para a qual a propriedade será mapeada
DataType - Associa um tipo de dados adicional a uma propriedade
ForeignKey - Especifica que a propriedade é usada como uma FK
NotMapped - Exclui a propriedade do mapeamento
StringLength - define o tamanho mínimo e máximo permitido para o tipo
Required - Especifica que o valor de um campo é obrigatório (not null)


Formas de popular tabelas com dados: 

1 - Manual com INSERT INTO
2 - Metodo OnModelCreating no arquivo de contexto e definir o codigo usando a propriedade HasData do EF Core
3 - Criar um método estático de defiunir o código para incluir dados usando o método AddRange() do EF Core
4 - Criar uma migração vazia usando o Migrations e usar os métodos Up() Down() definidos nestes metodos as intruçoes INSERT INT

