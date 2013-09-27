# coding: utf-8

require 'spec_helper'

feature 'gerenciar localidade' do

  scenario 'incluir localidade' do # , :js => true  do

    visit new_localidade_path

    preencher_e_verificar_localidade

    

  end

  scenario 'alterar localidade' do #, :js => true  do

    localidade = FactoryGirl.create(:localidade)

    visit edit_localidade_path(localidade)

    preencher_e_verificar_localidade



  end

   scenario 'excluir localidade' do #, :javascript => true  do

       localidade = FactoryGirl.create(:localidade)

        visit localidades_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_localidade

      fill_in 'Hora',  :with => "12:00"
      fill_in 'Data',  :with => "10/09/2013"
      fill_in 'Nome',  :with => "pelinca"

        
 
      click_button 'Salvar'

      page.should have_content 'Hora: 12:00'
      page.should have_content 'Data: 10/09/2013'
      page.should have_content 'Nome: pelinca'

      

   end
end
