#language: pt
#utf-8

@deletar @login
Funcionalidade: Deletar Task
Eu como usuário do site SuiteCRM
Quero acessar a página de lista de Tasks
Para deletar um task

Cenário: Deletar um task cadastrado
	Dado que o usuário acessa a página para Deletar o task "teste dojo 1 delete"
	Quando confirma a exclusão
	Então ao pesquisar o task "teste dojo 1 delete" vejo a mensagem 'No results found for "teste dojo 1 delete"'

	