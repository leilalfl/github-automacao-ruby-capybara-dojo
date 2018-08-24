#language: pt
#utf-8

@cadastro @login
Funcionalidade: Cadastro
Eu como usuário do site SuiteCRM
Quero acessar a página de cadastro de Task
Para criar um Task

Esquema do Cenário: Criar Task
	Dado que usuário acessa a página Create Task
	Quando preenche os dados "<subject>"
	Então exibe o "<subject>" como titulo da tela


	Exemplos:
		|subject		|
		|teste1988	 	|
		# |teste1988	|
		# |teste1955	|
		# |teste1986	|
		# |teste2016	|




