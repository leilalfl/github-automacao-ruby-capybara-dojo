 class CadastroPage <SitePrism::Page

 	element :menu_create, '#quickcreatetop > a'
 	element :opcao_createTasks, '#quickcreatetop > ul > li:nth-child(7) > a'
 	element :campo_subject, "input[name='name']"
 	element :combo_status, '#status'
	element :btn_salve, 'td.buttons > div.buttons > input#SAVE.button.primary'
 	element :titulo_task, 'h2[class="module-title-text"]'

 	
 	def acessar_createTasks()
 		menu_create.click
 		opcao_createTasks.click
 	end

 	def preencher_Subject(subject)
 		campo_subject.set(subject)

 	end

 	 
 	def clicar_btnSave()
 		btn_salve.click

 	end

 


 end