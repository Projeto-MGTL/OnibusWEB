# coding: utf-8
require 'spec_helper'

feature 'gerenciar linhaempresa' do

  scenario 'incluir linhaempresa' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    visit new_linhaempresa_path

    preencher_e_verificar_linhaempresa

    

  end

  scenario 'alterar linhaempresa' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    linhaempresa = FactoryGirl.create(:linhaempresa,:linha => linha)
    linhaempresa = FactoryGirl.create(:linhaempresa,:empresa => empresa)

    visit edit_linhaempresa_path(linhaempresa)

    preencher_e_verificar_linhaempresa


  end

  scenario 'excluir linhaempresa' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    linhaempresa = FactoryGirl.create(:linhaempresa,:linha => linha, :empresa => empresa)
    

    visit linhaempresas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_linhaempresa
    fill_in 'NomeEmpresa',  :with => "xxx"
    fill_in 'NomeLinha',  :with => "xxx"
    select 'XXX', :from => 'Linha'
    select 'XXX', :from => 'Empresa'
    
    click_button 'Salvar'
    
    page.should have_content 'NomeEmpresa: xxx'
    page.should have_content 'NomeLinha: xxx'
    page.should have_content 'Linha: XXX'
    page.should have_content 'Empresa: XXX'
    
  end

      

end
