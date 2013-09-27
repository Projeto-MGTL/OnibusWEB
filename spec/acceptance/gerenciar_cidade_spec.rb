# coding: utf-8

require 'spec_helper'

feature 'gerenciar cidade' do

  scenario 'incluir cidade' do # , :js => true  do

    visit new_cidade_path

    preencher_e_verificar_cidade

    

  end

  scenario 'alterar cidade' do #, :js => true  do

    cidade = FactoryGirl.create(:cidade)

    visit edit_cidade_path(cidade)

    preencher_e_verificar_cidade



  end

   scenario 'excluir cidade' do #, :javascript => true  do

       cidade = FactoryGirl.create(:cidade)

        visit cidades_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_cidade

      fill_in 'Nome',  :with => "Maria"
      fill_in 'UF',  :with => "RJ"
     
 
      click_button 'Salvar'

      page.should have_content 'Nome: Maria'
      page.should have_content 'UF: RJ'
      

   end
end
