# coding: utf-8

require 'spec_helper'

feature 'gerenciar linha' do

  scenario 'incluir linha' do # , :js => true  do

    visit new_linha_path

    preencher_e_verificar_linha

    

  end

  scenario 'alterar linha' do #, :js => true  do

    linha = FactoryGirl.create(:linha)

    visit edit_linha_path(linha)

    preencher_e_verificar_linha



  end

   scenario 'excluir linha' do #, :javascript => true  do

       linha = FactoryGirl.create(:linha)

        visit linhas_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_linha

      fill_in 'Numero',  :with => "121212"
      fill_in 'Nome',  :with => "São João"
      fill_in 'Horario',  :with => "14:00"
        
 
      click_button 'Salvar'

      page.should have_content 'Numero: 121212'
      page.should have_content 'Nome: São João'
      page.should have_content 'Horario: 14:00'
      

   end
end
