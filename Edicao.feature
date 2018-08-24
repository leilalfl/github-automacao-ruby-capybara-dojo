#language: pt
#utf-8

@edicao @login
Funcionalidade: Edição
Eu como usuário do site SuiteCRM
Quero acessar a página de edição de Tasks
Para editar um task


Esquema do Cenário: Editar um Task
	Dado que o usuário acessa a página de Edição
	Quando edita o Task "<subject_edicao>" com a nova descrição "<newSubject>"
	Então exibe o "<subject_edicao>" editado com a nova descrição "<newSubject>"

	Exemplos:
		|subject_edicao	 | newSubject		 |
		|teste dojo 1	 | teste dojo thera 1|
		