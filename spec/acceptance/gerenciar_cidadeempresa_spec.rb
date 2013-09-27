# coding: utf-8
require 'spec_helper'

feature 'gerenciar cidadeempresa' do

  scenario 'incluir cidadeempresa' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    cidade = FactoryGirl.create(:cidade, :nome => 'XXX')

    visit new_cidadeempresa_path

    preencher_e_verificar_cidadeempresa

    

  end

  scenario 'alterar cidadeempresa' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    cidade = FactoryGirl.create(:cidade, :nome => 'XXX')

    cidadeempresa = FactoryGirl.create(:cidadeempresa,:empresa => empresa)
    cidadeempresa = FactoryGirl.create(:cidadeempresa,:cidade => cidade)

    visit edit_cidadeempresa_path(cidadeempresa)

    preencher_e_verificar_cidadeempresa


  end

  scenario 'excluir cidadeempresa' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    cidade = FactoryGirl.create(:cidade, :nome => 'XXX')

    cidadeempresa = FactoryGirl.create(:cidadeempresa,:empresa => empresa, :cidade => cidade)
    

    visit cidadeempresas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_cidadeempresa

    
   
    fill_in 'Nomecidade', :with => 'campos'
    fill_in 'Nomeempresa', :with => 'sao joao'
    
    
    select 'XXX', :from => 'Empresa'
    select 'XXX', :from => 'Cidade'
    
    click_button 'Salvar'
    
    
    page.should have_content 'Nomecidade: campos'
    page.should have_content 'Nomeempresa: sao joao'
    
    page.should have_content 'Empresa: XXX'
    page.should have_content 'Cidade: XXX'
    
  end

      

end
