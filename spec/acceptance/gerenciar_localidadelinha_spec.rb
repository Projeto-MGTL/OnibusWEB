# coding: utf-8
require 'spec_helper'

feature 'gerenciar localidadelinha' do

  scenario 'incluir localidadelinha' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    localidade = FactoryGirl.create(:localidade, :nome => 'XXX')

    visit new_localidadelinha_path

    preencher_e_verificar_localidadelinha

    

  end

  scenario 'alterar localidadelinha' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    localidade = FactoryGirl.create(:localidade, :nome => 'XXX')

    localidadelinha = FactoryGirl.create(:localidadelinha,:linha => linha)
    localidadelinha = FactoryGirl.create(:localidadelinha,:localidade => localidade)

    visit edit_localidadelinha_path(localidadelinha)

    preencher_e_verificar_localidadelinha


  end

  scenario 'excluir localidadelinha' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    localidade = FactoryGirl.create(:localidade, :nome => 'XXX')

    localidadelinha = FactoryGirl.create(:localidadelinha,:linha => linha, :localidade => localidade)
    

    visit localidadelinhas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_localidadelinha

    fill_in 'NomeLinha',  :with => "mercedes"
    fill_in 'NomeLocalidade', :with => 'bens'

    select 'XXX', :from => 'Linha'
    select 'XXX', :from => 'Localidade'
    
    click_button 'Salvar'
    
    page.should have_content 'NomeLinha: mercedes'
    page.should have_content 'NomeLocalidade: bens'
    page.should have_content 'Linha: XXX'
    page.should have_content 'Localidade: XXX'
    
  end

      

end
