
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
	