Dado("que usuário acessa a página Create Task") do 
	@createTask = CadastroPage.new
	@createTask.acessar_createTasks
end


Quando("preenche os dados {string}") do|subject|
 @createTask.preencher_Subject(subject)
 sleep(3)
 @createTask.clicar_btnSave()
 # binding.pry

end

 Então("exibe o {string} como titulo da tela") do |subject|

 	expect(@createTask.titulo_task.text.downcase).to eql "#{subject}"


 end
