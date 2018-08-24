class EdicaoPage <SitePrism::Page

element :menuActivies, '#grouptab_3'
elements :opcaoTasks, '#moduleTab_6_Tasks'
element :filtroTask, 'ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top> li.sugar_action_button > a.glyphicon.glyphicon-filter.parent-dropdown-handler'
element :filtroSubject, '#name_basic'
element :btnSearch, '#search_form_submit'
element :btnEditar, 'span.suitepicon.suitepicon-action-edit'
element :editarSubject, '#name'
element :btnSave, 'td.buttons > div.buttons >input#SAVE'
element :titulo_task, 'h2[class="module-title-text"]'


def acessar_ListaTasks()

	menuActivies.click
	opcaoTasks.first.click

end

def acessar_Filtro()
	filtroTask.click

end

def preencher_Filtro(subject_edicao)
	filtroSubject.set(subject_edicao)
	sleep(5)
	btnSearch.click

end

def editar(newSubject)
	btnEditar.click
	editarSubject.set(newSubject)
	btnSave.click

end

end

















