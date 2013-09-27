# coding: utf-8
require 'spec_helper'

feature 'gerenciar veiculolinha' do

  scenario 'incluir veiculolinha' do #, :javascript => true  do

    veiculo = FactoryGirl.create(:veiculo, :placa => 'XXX')
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    visit new_veiculolinha_path

    preencher_e_verificar_veiculolinha

    

  end

  scenario 'alterar veiculolinha' do #, :javascript => true  do

    veiculo = FactoryGirl.create(:veiculo, :placa => 'XXX')
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    veiculolinha = FactoryGirl.create(:veiculolinha,:veiculo => veiculo)
    veiculolinha = FactoryGirl.create(:veiculolinha,:linha => linha)

    visit edit_veiculolinha_path(veiculolinha)

    preencher_e_verificar_veiculolinha


  end

  scenario 'excluir veiculolinha' do #, :javascript => true  do

    veiculo = FactoryGirl.create(:veiculo, :placa => 'XXX')
    linha = FactoryGirl.create(:linha, :nome => 'XXX')

    veiculolinha = FactoryGirl.create(:veiculolinha,:veiculo => veiculo, :linha => linha)
    

    visit veiculolinhas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_veiculolinha

    
   
    fill_in 'Placa',  :with => "xxx"
    fill_in 'NomeLinha',  :with => "xxx"

    
    
    select 'XXX', :from => 'Veiculo'
    select 'XXX', :from => 'Linha'
    
    click_button 'Salvar'
    
    
     page.should have_content 'Placa: xxx'
    page.should have_content 'NomeLinha: xxx'
    
    page.should have_content 'Veiculo: XXX'
    page.should have_content 'Linha: XXX'
    
  end

      

end
